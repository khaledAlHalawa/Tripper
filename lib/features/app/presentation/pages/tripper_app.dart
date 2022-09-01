import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/viewmodel/tripper_viewmodel.dart';
import 'package:app/features/splash_and_intro/splash_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/constant/constant.dart';
import '../../../../config/routing/route_generator.dart';
import '../../../../service/localization_service.dart';
import '../../../../service/screen_service.dart';
import 'package:easy_localization/easy_localization.dart';

class TripperApp extends ConsumerStatefulWidget {
  const TripperApp({Key? key}) : super(key: key);

  @override
  ConsumerState<TripperApp> createState() => _TripperAppState();

  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
}

class _TripperAppState extends ConsumerState<TripperApp> {


  @override
  Widget build(BuildContext context) {
    final viewmodel = ref.watch<TripperViewModel>(AppProvidersContainer.tripperViewmodelProvider);

    return LocalizationService(
      child: ScreenUtilInit(
        designSize: kDesignSize,
        minTextAdapt: true,
        builder: (context,child) => Observer(
          builder: (context) => MaterialApp(
            title: 'Tripper',
            debugShowCheckedModeBanner: false,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            locale: context.locale,
            builder: (context, child) {
              final orientation = MediaQuery.of(context).orientation;
              ScreenService(context, orientation);

              return child!;
            },
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            theme: viewmodel.theme,
            initialRoute: SplashPage.route,
            navigatorKey: TripperApp.navKey,
            onGenerateRoute: (settings) => RouteGenerator(settings),
          ),
        ),
      ),
    );
  }
}
