import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/features/app/presentation/widgets/tripper_error_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/place/domain/entities/place.dart';
import 'package:app/features/place/presentation/enums/place_mode.dart';
import 'package:app/features/place/presentation/pages/place_details_screen.dart';
import 'package:app/features/place/presentation/widgets/place_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../../core/utils/search_mixin.dart';
import '../../../app/presentation/viewmodel/app_providers.dart';
import '../../../app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import '../../../app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import '../../../app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import '../../../app/presentation/widgets/tripper_empty_state.dart';
import '../../../app/presentation/widgets/tripper_text.dart';
import '../../../app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import '../../../search/presentation/widgets/tripper_drop_down_filter.dart';
import '../../domain/use_cases/get_places_usecase.dart';
import '../manager/place_viewmodel.dart';

class MostFamousPlacesScreen extends ConsumerStatefulWidget {
  const MostFamousPlacesScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MostFamousPlacesScreen> createState() => _MostFamousPlacesScreenState();
}

class _MostFamousPlacesScreenState extends ConsumerState<MostFamousPlacesScreen> with SearchMixin {
  late PlaceViewmodel placeViewmodel;
  Map<String, dynamic> searchByList = {
    'المكان': 0,
    'الدولة': 1,
    'المدينة': 2,
    'المنتج': 3,
    'الخاصية': 4,
    'الاختيار': 5,
  };

  int selectedSearchBy = 0;

  @override
  void initState() {
    super.initState();
    initSearch();
    placeViewmodel = GetIt.I<PlaceViewmodel>();
    placeViewmodel.pagingController = PagingController(firstPageKey: 1, invisibleItemsThreshold: 5);
    placeViewmodel.pagingController.addPageRequestListener((pageKey) {
      placeViewmodel.fetchPlaces(GetPlacesParams(page: pageKey.toString()), pageKey);
    });
  }

  @override
  void dispose() {
    // placeViewmodel.pagingController.dispose();
    disposeSearch();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(
          leadingAppBar: LeadingAppBar.back,
          title: "أشهر الأماكن",
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              20.horizontalSpace,
              TripperText(
                  text: 'البحث بحسب اسم:',
                  textStyle:
                      Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).colorScheme.grey)),
              const Spacer(),
              TripperDropDownFilter<String>(
                flex: 2,
                items: searchByList.keys.toList(),
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
          Observer(builder: (context) {
            final isFilterMode = placeViewmodel.placeMode == PlaceMode.filter;
            return Padding(
              padding: HWEdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
              child: TripperTextField(
                inputDecorationType: InputDecorationType.normal,
                controller: searchController,
                onFieldSubmitted: onSearch,
                decorationParam: InputDecorationParam(
                  hintText: "ابحث عن...",
                  contentPadding: HWEdgeInsetsDirectional.only(top: 25, end: 10),
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      22.horizontalSpace,
                      const Icon(Icons.search),
                      Container(
                        width: 1,
                        height: 35.h,
                        margin: HWEdgeInsets.symmetric(vertical: 14, horizontal: 7),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.grey200.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  ),
                  isDense: false,
                  suffixIcon: InkWell(
                    onTap: () async {
                      if (isFilterMode) {
                        searchController!.clear();
                        await Future.delayed(const Duration(milliseconds: 500));
                        placeViewmodel.pagingController = PagingController(firstPageKey: 1, invisibleItemsThreshold: 5);
                        placeViewmodel.fetchPlaces(GetPlacesParams(), 1);
                      }
                    },
                    child: SizedBox(height: 30, width: 30, child: isFilterMode ? closeIcon() : const SizedBox()),
                  ),
                ),
                maxLines: 1,
              ),
            );
          }),
          Observer(
            builder: (context) {
              return Expanded(
                child: Padding(
                  padding: HWEdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
                  child: RefreshIndicator(
                    onRefresh: () async => placeViewmodel.pagingController.refresh(),
                    color: Theme.of(context).colorScheme.primary,
                    child: PagedListView<int, Place>(
                      pagingController: placeViewmodel.pagingController,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      builderDelegate: PagedChildBuilderDelegate<Place>(
                        firstPageProgressIndicatorBuilder: (_) => TripperLoader(),
                        newPageProgressIndicatorBuilder: (_) => TripperLoader(),
                        noItemsFoundIndicatorBuilder: (_) =>
                            const TripperEmptyState(emptyStateTypes: EmptyStateTypes.place),
                        itemBuilder: (context, item, index) => Padding(
                          padding: HWEdgeInsets.only(bottom: 20),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) => PlaceDetailsScreen(place: item)));
                              },
                              child: PlaceCard(place: item)),
                        ),
                        firstPageErrorIndicatorBuilder: (_) => TripperErrorState(
                          error: const DioFailure(message: 'time out'),
                          onRetry: () {
                            placeViewmodel.pagingController.refresh();
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  @override
  void onSearch(String query) {
    GetPlacesParams params;

    if (selectedSearchBy == 0) {
      params = GetPlacesParams(filterName: query);
    } else if (selectedSearchBy == 1) {
      params = GetPlacesParams(filterCountryName: query);
    } else if (selectedSearchBy == 2) {
      params = GetPlacesParams(filterCityName: query);
    } else if (selectedSearchBy == 3) {
      params = GetPlacesParams(filterProductName: query);
    } else if (selectedSearchBy == 4) {
      params = GetPlacesParams(filterSpecsName: query);
    } else {
      params = GetPlacesParams(filterOptionName: query);
    }

    placeViewmodel.pagingController = PagingController(firstPageKey: 1, invisibleItemsThreshold: 5);
    placeViewmodel.fetchPlaces(params, 1, mode: query == '' ? PlaceMode.normal : PlaceMode.filter);
  }

  closeIcon() {
    return Center(
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.background, borderRadius: BorderRadius.circular(7).r),
        padding: HWEdgeInsetsDirectional.all(4),
        child: Icon(Icons.close,   color: Theme.of(context).colorScheme.onBackground, size: 18),
      ),
    );
  }
}
