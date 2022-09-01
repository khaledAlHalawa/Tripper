import 'package:flutter/material.dart';
import '../../features/app/presentation/widgets/not_found_route_screen.dart';
import 'modular_route_list.dart';
import 'module_config.dart';

class RouteGenerator extends MaterialPageRoute {
  @override
  final Duration transitionDuration;

  factory RouteGenerator(RouteSettings settings) {
    ModularRoute? selectedModuleConfig = modularConfigList.firstWhere(
      (element) => element.routeName == settings.name,
      orElse: () => NotFoundRouteModuleConfig().routes.first,
    );
    return RouteGenerator._(
      builder: (context) =>
          selectedModuleConfig.routeConfig.routeBuilder(context, settings.arguments),
      settings: settings,
      maintainState: selectedModuleConfig.routeConfig.maintainState,
      transitionDuration: selectedModuleConfig.routeConfig.transitionDuration,
      fullscreenDialog: selectedModuleConfig.routeConfig.fullscreenDialog,
    );
  }

  RouteGenerator._({
    required WidgetBuilder builder,
    required RouteSettings settings,
    required bool fullscreenDialog,
    required bool maintainState ,
    required this.transitionDuration,
  }) : super(
          builder: builder,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
          maintainState: maintainState,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      child;
}
