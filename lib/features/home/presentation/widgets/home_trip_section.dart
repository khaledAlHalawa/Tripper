import 'package:app/features/app/presentation/widgets/mobx_future_builder.dart';
import 'package:app/features/app/presentation/widgets/tripper_error_state.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/home/presentation/widgets/title_home_section.dart';
import 'package:app/features/trip/domain/entities/trip.dart';
import 'package:app/features/trip/domain/use_cases/get_trips_usecase.dart';
import 'package:app/features/trip/presentation/manager/trip_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/error/failures.dart';
import '../../../app/presentation/pages/tripper_app.dart';
import '../../../app/presentation/viewmodel/app_providers.dart';
import '../../../app/presentation/widgets/tripper_empty_state.dart';
import '../../../trip/presentation/pages/all_next_trip.dart';
import '../../../trip/presentation/pages/trip_details_screen.dart';
import '../../../trip/presentation/widgets/trip_card.dart';

class HomeTripSection extends ConsumerStatefulWidget {
  const HomeTripSection({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeTripSection> createState() => _HomeTripSectionState();
}

class _HomeTripSectionState extends ConsumerState<HomeTripSection> {
  @override
  Widget build(BuildContext context) {
    final tripViewmodel = ref.watch<TripViewmodel>(AppProvidersContainer.tripProvider);

    return Column(
      children: [
        Observer(
          builder: (context) {
            return TitleHomeSection(
              title: "الرحلات القادمة",
              onShowAll: tripViewmodel.trips != null && (tripViewmodel.trips?.length ?? 0) != 0
                  ? () {
                      TripperApp.navKey.currentState!
                          .push(MaterialPageRoute(builder: (_) => const AllNextTripScreen()));
                    }
                  : null,
              lengthList: 10,
              // tripViewmodel.trips?.length
            );
          },
        ),
        Observer(builder: (context) {
          return MobxFutureBuilder<List<Trip>?>(
            future: tripViewmodel.tripsFuture,
            onLoading: () => TripperLoader(),
            onSuccess: (trips) => (trips?.length ?? 0) != 0
                ? Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                    child: SizedBox(
                      height: 265.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        itemCount: trips?.take(3).length ?? 0,
                        separatorBuilder: (_, __) => SizedBox(width: 10.w),
                        itemBuilder: (context, index) {
                          final trip = trips![index];
                          return GestureDetector(
                              onTap: () {
                                TripperApp.navKey.currentState!
                                    .push(MaterialPageRoute(builder: (_) => TripDetailsScreens(trip: trip)));
                              },
                              child: TripCard(trip: trip));
                        },
                      ),
                    ),
                  )
                : const TripperEmptyState(emptyStateTypes: EmptyStateTypes.trip),
            onError: (err) => TripperErrorState(
              error: err,
              onRetry: () => getTripAction(tripViewmodel, GetTripsParams()),
            ),
          );
        }),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  getTripAction(TripViewmodel viewmodel, GetTripsParams params) {
    viewmodel.fetchTrips(params);
  }
}
