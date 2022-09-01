import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../../../common/constant/design/assets_provider.dart';
import '../image_view/svg_view.dart';

enum LeadingAppBar {
  menu,
  back,
}

extension LeadingAppbarUtils on LeadingAppBar {
  Widget icon(BuildContext context) {
    switch (this) {
      case LeadingAppBar.menu:
        return IconButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            ZoomDrawer.of(context)!.toggle();
          },
          icon: SvgPictureView(TripperAssets.ksvDrawer, color: Theme.of(context).colorScheme.onSurface),
        );
      case LeadingAppBar.back:
        return IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_rounded, color: Theme.of(context).colorScheme.onSurface),
        );
    }
  }
}
