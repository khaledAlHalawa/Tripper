import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/home/presentation/widgets/title_home_section.dart';
import 'package:app/features/place/domain/entities/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/widgets/tripper_empty_state.dart';
import '../../../app/presentation/widgets/tripper_error_state.dart';
import '../../../place/domain/use_cases/get_places_usecase.dart';
import '../../../place/presentation/manager/place_viewmodel.dart';
import '../../../place/presentation/pages/most_famous_places_screen.dart';
import '../../../place/presentation/pages/place_details_screen.dart';
import '../../../place/presentation/widgets/place_card.dart';

class HomePlaceSection extends ConsumerStatefulWidget {
  const HomePlaceSection({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePlaceSection> createState() => _HomePlaceSectionState();
}

class _HomePlaceSectionState extends ConsumerState<HomePlaceSection> {
  @override
  Widget build(BuildContext context) {
    final placeViewmodel = ref.watch<PlaceViewmodel>(AppProvidersContainer.placeProvider);

    return Column(
      children: [
        Observer(builder: (context) {
          return TitleHomeSection(
            title: "أشهر الأماكن",
            onShowAll: () {
              TripperApp.navKey.currentState!.push(MaterialPageRoute(builder: (_) => const MostFamousPlacesScreen()));
            },
            lengthList: placeViewmodel.placeFuture.value?.length,
          );
        }),
        Observer(builder: (context) {
          return MobxFutureBuilder<List<Place>?>(
            future: placeViewmodel.placeFuture,
            onLoading: () => TripperLoader(),
            onError: (err) => TripperErrorState(
              error: err,
              onRetry: () => placeViewmodel.fetchPlaces(GetPlacesParams(), 1),
            ),
            onSuccess: (places) => (places?.length ?? 0) != 0
                ? Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      itemCount: places?.take(3).length ?? 0,
                      separatorBuilder: (_, __) => SizedBox(height: 10.h),
                      itemBuilder: (context, index) {
                        final place = places![index];
                        return GestureDetector(
                          onTap: () {
                            TripperApp.navKey.currentState!
                                .push(MaterialPageRoute(builder: (_) => PlaceDetailsScreen(place: place)));
                          },
                          child: PlaceCard(place: place),
                        );
                      },
                    ),
                  )
                : const Center(child: TripperEmptyState(emptyStateTypes: EmptyStateTypes.place)),
          );
        }),
      ],
    );
  }
}
