import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/app_bar_utils.dart';
import 'package:app/features/app/presentation/widgets/tripper_app_bar/tripper_appbar.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/app/presentation/widgets/tripper_text_field/tripper_text_field.dart';
import 'package:app/features/city/presentation/manager/city_viewmodel.dart';
import 'package:app/features/city/presentation/widgets/city_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/presentation/widgets/tripper_app_bar/app_bar_params.dart';
import '../../../app/presentation/widgets/tripper_error_state.dart';
import '../../domain/entities/city.dart';
import 'city_details_screen.dart';

class MostFamousCitiesScreen extends ConsumerStatefulWidget {
  const MostFamousCitiesScreen({Key? key, required this.cities}) : super(key: key);

  final List<City> cities;
  @override
  ConsumerState<MostFamousCitiesScreen> createState() => _MostFamousCitiesScreenState();
}

class _MostFamousCitiesScreenState extends ConsumerState<MostFamousCitiesScreen> {
  @override
  Widget build(BuildContext context) {
    final cityViewmodel = ref.watch<CityViewModel>(AppProvidersContainer.cityProvider);

    return Scaffold(
      appBar: TripperAppBar(
        appBarParams: AppBarParams(
          leadingAppBar: LeadingAppBar.back,
          title: "أشهر المدن",
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 20.h, left: 20.w, right: 20.w),
            child: TripperTextField(
              inputDecorationType: InputDecorationType.normal,
              controller: TextEditingController(),
              onChange: (text) => cityViewmodel.filterList(text),
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
                      height: 20,
                      margin: HWEdgeInsets.symmetric(vertical: 14, horizontal: 7),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.grey200.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5)),

                      // height: double.infinity,
                    ),
                  ],
                ),
                isDense: false,
              ),
              maxLines: 1,
            ),
          ),
          Expanded(
            child: MobxFutureBuilder<List<City>?>(
              future: cityViewmodel.citiesFuture,
              onSuccess: (cities) => RefreshIndicator(
                onRefresh: () async => cityViewmodel.fetchCities(),
                color: Theme.of(context).colorScheme.primary,
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 20.h, left: 20.w, right: 20.w),
                      sliver: Observer(builder: (context) {
                        final list = cityViewmodel.filteredCity;

                        return SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final city = list[index];

                              return Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (_) => CityDetailsScreen(city: city)));
                                    },
                                    child: CityCard(city: city)),
                              );
                            },
                            childCount: list.length,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              onError: (err) => TripperErrorState(
                error: err,
                onRetry: () {
                  cityViewmodel.fetchCities();
                },
              ),
              onLoading: () => TripperLoader(),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    if (widget.cities.isEmpty) {
      refresh();
    }
  }

  refresh() {
    ref.read(AppProvidersContainer.cityProvider).fetchCities();
  }
}
