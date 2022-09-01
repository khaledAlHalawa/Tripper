import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/my_color_scheme.dart';
import 'package:app/core/utils/responsive_padding.dart';
import 'package:app/features/app/domain/repositories/prefs_repository.dart';
import 'package:app/features/app/presentation/viewmodel/app_providers.dart';
import 'package:app/features/app/presentation/widgets/image_view/svg_view.dart';
import 'package:app/features/app/presentation/widgets/tripper_text.dart';
import 'package:app/features/auth/presentation/widgets/logout_dialog.dart';
import 'package:app/features/splash_and_intro/wlcome_page.dart';
import 'package:app/generated/locale_keys.g.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get_it/get_it.dart';

import '../../../../about_app/about_app.dart';
import '../../../../city/presentation/pages/most_famous_cities_screen.dart';
import '../../../../place/presentation/pages/all_products.dart';
import '../../../../place/presentation/pages/most_famous_places_screen.dart';
import '../../../../terms_conditions/terms_and_conditions.dart';
import '../../../../trip/presentation/pages/all_next_trip.dart';
import '../../pages/tripper_app.dart';
import '../animated_dialog.dart';
import '../sized_boxes/sizedbox.dart';

part 'menu_screen.dart';
part 'menu_item.dart';


class TripperDrawer extends StatefulWidget {
  const TripperDrawer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<TripperDrawer> createState() => _TripperDrawerState();
}

class _TripperDrawerState extends State<TripperDrawer> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const _MenuScreen(),
      mainScreen: widget.child,
      isRtl: true,
      borderRadius: kBr12,
      showShadow: false,
      angle: 0.0,
      menuBackgroundColor: Theme.of(context).colorScheme.drawer,
      style: DrawerStyle.defaultStyle,
      slideWidth: 312.w,
      menuScreenWidth: 312.w,
      mainScreenScale: 0.1.w,
      androidCloseOnBackTap: true,
      mainScreenTapClose: true,
    );
  }
}
