import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_empty_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/home/presentation/widgets/title_home_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/viewmodel/app_providers.dart';
import '../../../app/presentation/widgets/tripper_error_state.dart';
import '../../../city/domain/entities/city.dart';
import '../../../city/presentation/manager/city_viewmodel.dart';
import '../../../city/presentation/pages/city_details_screen.dart';
import '../../../city/presentation/pages/most_famous_cities_screen.dart';
import '../../../city/presentation/widgets/city_card.dart';

class HomeCitySection extends ConsumerStatefulWidget {
  const HomeCitySection({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeCitySection> createState() => _HomeCitySectionState();
}

class _HomeCitySectionState extends ConsumerState<HomeCitySection> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cityViewmodel = ref.watch<CityViewModel>(AppProvidersContainer.cityProvider);
    return Column(
      children: [
        Observer(builder: (context) {
          return TitleHomeSection(
            title: "أشهر المدن",
            onShowAll: cityViewmodel.cities != null
                ? () {
                    TripperApp.navKey.currentState!.push(
                      MaterialPageRoute(builder: (_) => MostFamousCitiesScreen(cities: cityViewmodel.cities ?? [])),
                    );
                  }
                : null,
            lengthList: cityViewmodel.cities?.length,
          );
        }),
        Observer(builder: (context) {
          return MobxFutureBuilder<List<City>?>(
            future: cityViewmodel.citiesFuture,
            onError: (err) => TripperErrorState(
              error: err,
              onRetry: () => cityViewmodel.fetchCities(),
            ),
            onLoading: () => TripperLoader(),
            onSuccess: (cities) => (cities?.length ?? 0) == 0
                ? const TripperEmptyState(emptyStateTypes: EmptyStateTypes.city)
                : Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                    child: SizedBox(
                      height: 150.0.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        itemCount: cities?.take(3).length ?? 0,
                        separatorBuilder: (_, __) => SizedBox(width: 10.w),
                        itemBuilder: (context, index) {
                          final city = cities![index];
                          return GestureDetector(
                            onTap: () {
                              TripperApp.navKey.currentState!
                                  .push(MaterialPageRoute(builder: (_) => CityDetailsScreen(city: city)));
                            },
                            child: CityCard(city: city),
                          );
                        },
                      ),
                    ),
                  ),
          );
        }),
      ],
    );
  }
}
