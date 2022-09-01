import 'package:flutter/material.dart';
import '../../../../config/routing/module_config.dart';

class NotFoundRouteScreen extends StatelessWidget {
  const NotFoundRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: const Center(
        child: Text(
          " -_- 404 -_- "
          "\nplease check route name or check add route config to modularConfigList",
          // style: TextStyle(
          //   color: ColorsApp.primary,
          //   fontSize: FontSize.large,
          // ).bold,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

const String kNotFoundRouteName = "404";

class NotFoundRouteModuleConfig extends ModuleConfig {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          kNotFoundRouteName,
          routeConfig: RouteConfig(
            routeBuilder: (context, _) => const NotFoundRouteScreen(),
          ),
        )
      ];
}
