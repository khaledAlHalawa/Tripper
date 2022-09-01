import 'package:app/common/constant/design/assets_provider.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/core/utils/search_mixin.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import 'package:app/features/trip/domain/use_cases/get_trips_usecase.dart';
import 'package:app/features/trip/presentation/enums/trip_mode.dart';
import 'package:app/features/trip/presentation/manager/trip_viewmodel.dart';
import 'package:app/features/trip/presentation/pages/trip_details_screen.dart';
import 'package:app/features/trip/presentation/pages/trip_filter_page.dart';
import 'package:app/features/trip/presentation/widgets/trip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/widgets/filter/filter_chips.dart';
import '../../../app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import '../../../app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import '../../../app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import '../../../app/presentation/widgets/tripper_empty_state.dart';
import '../../../app/presentation/widgets/tripper_error_state.dart';
import '../../../app/presentation/widgets/tripper_text.dart';
import '../../../search/presentation/widgets/tripper_drop_down_filter.dart';
import '../../domain/entities/trip.dart';

class AllNextTripScreen extends ConsumerStatefulWidget {
  const AllNextTripScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AllNextTripScreen> createState() => _AllNextTripScreenState();
}

class _AllNextTripScreenState extends ConsumerState<AllNextTripScreen> with SearchMixin {
  late TripViewmodel tripViewmodel;
  Map<String, dynamic> searchByList = {'الرحلة': 0, 'المكان': 1, 'التصنيف': 2, 'المحطة': 3};
  int selectedSearchBy = 0;

  @override
  void initState() {
    super.initState();
    tripViewmodel = ref.read(AppProvidersContainer.tripProvider);
    initSearch();
  }

  @override
  dispose() {
    disposeSearch();
    super.dispose();
  }

  Map<int, List<String>> filteredItem = {};
  GetTripsParams? filterParams;

  @override
  Widget build(BuildContext context) {
    tripViewmodel = ref.watch(AppProvidersContainer.tripProvider);
    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(
          leadingAppBar: LeadingAppBar.back,
          title: "الرحلات القادمة",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.verticalSpace,
          Row(
            children: [
              20.horizontalSpace,
              TripperText(
                  text: 'البحث بحسب اسم:',
                  textStyle:
                      Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).colorScheme.grey)),
              const Spacer(),
              TripperDropDownFilter<String>(
                items: searchByList.keys.toList(),
                flex: 2,
                onChange: (val) {
                  selectedSearchBy = searchByList[val];
                  if (searchController!.text != '') {
                    onSearch(searchController!.text);
                  }
                },
                value: searchByList.keys.toList()[0],
              ),
              20.horizontalSpace,
            ],
          ),
          Padding(
            padding: HWEdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            child: Observer(builder: (context) {
              final isFilterMode = tripViewmodel.tripMode == TripMode.filter;

              return TripperTextField(
                inputDecorationType: InputDecorationType.normal,
                controller: searchController,
                onFieldSubmitted: onSearch,
                decorationParam: InputDecorationParam(
                  hintText: "ابحث عن...",
                  // icon: Icon(Icons.search),
                  contentPadding: const EdgeInsetsDirectional.only(top: 20, end: 10),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      22.horizontalSpace,
                      const Icon(Icons.search),
                      Container(
                        width: 1,
                        height: 30,
                        margin: HWEdgeInsets.symmetric(vertical: 14, horizontal: 7),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.grey200.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5)),
                        // height: double.infinity,
                      ),
                    ],
                  ),
                  suffixIcon: InkWell(
                    onTap: () async {
                      if (isFilterMode) {
                        searchController!.clear();
                        await Future.delayed(const Duration(milliseconds: 500));
                        tripViewmodel.fetchTrips(GetTripsParams());
                        filteredItem = {};
                        filterParams = null;

                        setState(() {});
                      } else {
                        final result =
                            await Navigator.of(context).push(MaterialPageRoute(builder: (_) => const TripFilterPage()));
                        if (result != null) {
                          filteredItem = (result as List)[1];
                          filterParams = result[0];
                          setState(() {});
                        }
                      }
                    },
                    child: SizedBox(
                        height: 30,
                        width: 30,
                        child: isFilterMode
                            ? closeIcon()
                            : SvgPictureView(TripperAssets.ksvFilter, fit: BoxFit.scaleDown)),
                  ),
                  isDense: false,
                ),
                maxLines: 1,
              );
            }),
          ),
          if (filteredItem.isNotEmpty)
            SizedBox(
              height: 35.h,
              child: ListView.separated(
                padding: HWEdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (_, index) => FilterChips(
                  title: '${filteredItem.values.toList()[index][0]} : ${filteredItem.values.toList()[index][1]}',
                  onTap: (value) {
                    onRemoveFilterChips(filteredItem.keys.toList()[index]);
                  },
                ),
                separatorBuilder: (_, index) => 10.horizontalSpace,
                itemCount: filteredItem.keys.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
              ),
            ),
          Observer(builder: (context) {
            return Expanded(
              child: MobxFutureBuilder<List<Trip>?>(
                future: tripViewmodel.tripsFuture,
                onSuccess: (trips) => (trips?.length ?? 0) != 0
                    ? RefreshIndicator(
                        onRefresh: () async => tripViewmodel.fetchTrips(GetTripsParams()),
                        color: Theme.of(context).colorScheme.primary,
                        child: CustomScrollView(
                          physics: const BouncingScrollPhysics(),
                          slivers: [
                            SliverPadding(
                              padding: HWEdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
                              sliver: SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (context, index) {
                                    final trip = trips![index];
                                    return Padding(
                                      padding: HWEdgeInsets.only(bottom: 20),
                                      child: GestureDetector(
                                          onTap: () {
                                            TripperApp.navKey.currentState!.push(
                                                MaterialPageRoute(builder: (_) => TripDetailsScreens(trip: trip)));
                                          },
                                          child: TripCard(trip: trip)),
                                    );
                                  },
                                  childCount: trips?.length ?? 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const Center(child: TripperEmptyState(emptyStateTypes: EmptyStateTypes.trip)),
                onError: (err) => Center(
                  child: TripperErrorState(
                    error: err,
                    onRetry: () => tripViewmodel.fetchTrips(GetTripsParams()),
                  ),
                ),
                onLoading: () => TripperLoader(),
              ),
            );
          })
        ],
      ),
    );
  }

  @override
  void onSearch(String query) {
    GetTripsParams params;

    if (selectedSearchBy == 0) {
      params = GetTripsParams(filterJourneyName: query);
    } else if (selectedSearchBy == 1) {
      params = GetTripsParams(filterPlaceName: query);
    } else if (selectedSearchBy == 2) {
      params = GetTripsParams(filterCategoryName: query);
    } else {
      params = GetTripsParams(filterStationName: query);
    }

    tripViewmodel.fetchTrips(query == '' ? GetTripsParams() : params);
  }

  closeIcon() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(7).r,
        ),
        padding: HWEdgeInsetsDirectional.all(4),
        child: Icon(Icons.close, color: Theme.of(context).colorScheme.onBackground, size: 18),
      ),
    );
  }

  void onRemoveFilterChips(int key) {
    filteredItem = filteredItem..removeWhere((keyMap, value) => keyMap == key);

    if (key == 0) {
      filterParams = filterParams!
        ..filterStartsBetween = null
        ..filterStartsBefore = null
        ..filterEndBetween = null
        ..filterEndBefore = null;
    } else if (key == 1) {
      filterParams = filterParams!..filterPlaceIds = null;
    } else if (key == 2) {
      filterParams = filterParams!..filterNumberOfDays = null;
    } else if (key == 3) {
      filterParams = filterParams!..filterReview = null;
    } else if (key == 4) {
      filterParams = filterParams!..filterJourneyType = null;
    } else if (key == 5) {
      filterParams = filterParams!..filterMax = null;
    }

    setState(() {});
    tripViewmodel.fetchTrips(filterParams!);
  }
}
