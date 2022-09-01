import 'package:app/config/routing/module_config.dart';
import 'package:app/features/splash_and_intro/splash_page.dart';

class SplashAndIntroModuleRoute implements ModuleConfig {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          SplashPage.route,
          routeConfig: RouteConfig(
            routeBuilder: (_, __) => SplashPage.page,
          ),
        ),
      ];
}
