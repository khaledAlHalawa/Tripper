import 'package:flutter/material.dart';

import '../../../../service/screen_service.dart';

class ResponsiveWidget extends StatefulWidget {
  const ResponsiveWidget({
    Key? key,
    required this.mobileDesign,
    this.tabletDesign,
    this.desktopDesign,
  }) : super(key: key);

  final Widget mobileDesign;
  final Widget? tabletDesign;
  final Widget? desktopDesign;

  @override
  State<ResponsiveWidget> createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        ScreenType targetSide = ScreenService.targetScreenType;

        final Widget targetDesign;

        if (targetSide == ScreenType.mobile) {
          targetDesign = widget.mobileDesign;
        } else if (targetSide == ScreenType.tablet) {
          targetDesign = widget.tabletDesign ?? widget.mobileDesign;
        } else {
          targetDesign = widget.desktopDesign ?? widget.mobileDesign;
        }

        return targetDesign;
      },
    );
  }
}
