import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/presentation/viewmodel/app_providers.dart';
import '../../../city/presentation/manager/city_viewmodel.dart';
import '../../../place/domain/use_cases/get_places_usecase.dart';
import '../../../place/presentation/manager/place_viewmodel.dart';
import '../../../trip/domain/use_cases/get_trips_usecase.dart';
import '../../../trip/presentation/manager/trip_viewmodel.dart';
import '../widgets/home_city_section.dart';
import '../widgets/home_place_section.dart';
import '../widgets/home_trip_section.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => refreshHome(),
        child: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: HomeCitySection()),
            SliverToBoxAdapter(child: HomeTripSection()),
            SliverToBoxAdapter(child: HomePlaceSection())
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    refreshHome();
  }

  refreshHome() {
    ref.read<CityViewModel>(AppProvidersContainer.cityProvider).fetchCities();
    ref.read<PlaceViewmodel>(AppProvidersContainer.placeProvider).fetchPlaces(GetPlacesParams(), 1);
    ref.read<TripViewmodel>(AppProvidersContainer.tripProvider).fetchTrips(GetTripsParams());
  }
}
