import 'package:flutter/material.dart';

typedef RouteBuilder = Widget Function(BuildContext, Object?) ;

abstract class ModuleConfig {
  const ModuleConfig();

  List<ModularRoute> get routes;
}

abstract class ModularRoute {
  final String routeName;
  final RouteConfig routeConfig;

  ModularRoute(this.routeName, {required this.routeConfig});
}

class ChildRoute extends ModularRoute {
  ChildRoute(String routeName, {required RouteConfig routeConfig})
      : super(routeName, routeConfig: routeConfig);
}

class RouteConfig {
  final RouteBuilder routeBuilder;
  final bool fullscreenDialog;
  final bool maintainState;
  final Duration transitionDuration;

  RouteConfig({
    required this.routeBuilder,
    this.fullscreenDialog = false,
    this.maintainState = true,
    this.transitionDuration = const Duration(milliseconds: 700),
  });
}
