import 'dart:async';
import 'package:app/common/constant/constant.dart';
import 'package:app/features/app/presentation/pages/base_page.dart';
import 'package:app/features/app/presentation/widgets/sized_boxes/sizedbox.dart';
import 'package:app/features/app/presentation/widgets/tripper_loader.dart';
import 'package:app/features/splash_and_intro/wlcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import '../../common/helper/helper_functions.dart';
import '../app/domain/repositories/prefs_repository.dart';
import '../app/presentation/viewmodel/app_providers.dart';
import '../app/presentation/widgets/image_view/svg_view.dart';
import '../city/presentation/manager/city_viewmodel.dart';
import '../place/domain/use_cases/get_places_usecase.dart';
import '../place/presentation/manager/place_viewmodel.dart';
import '../trip/domain/use_cases/get_trips_usecase.dart';
import '../trip/presentation/manager/trip_viewmodel.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage._({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();

  static Widget get page => const SplashPage._();

  static const String route = '/';
}

class _SplashPageState extends ConsumerState<SplashPage> {
  late PrefsRepository _prefsRepository;

  @override
  void initState() {
    super.initState();

    ref.read<CityViewModel>(AppProvidersContainer.cityProvider).fetchCities();
    ref.read<PlaceViewmodel>(AppProvidersContainer.placeProvider).fetchPlaces(GetPlacesParams(), 1);
    ref.read<TripViewmodel>(AppProvidersContainer.tripProvider).fetchTrips(GetTripsParams());
    _prefsRepository = GetIt.I<PrefsRepository>();
    final user = _prefsRepository.user;

    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushAndRemoveUntil(
          user != null ? BasePage.pageRoute : WelcomePage.pageRoute,
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    HelperFunctions.changeAppStatus(_prefsRepository.getTheme);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPictureView(TripperAssets.ksvLogoSecondary),
            Sh.size48(),
            TripperLoader.spinKitThreeBounce(),
          ],
        ),
      ),
    );
  }



}
