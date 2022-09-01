import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:app/common/constant/constant.dart';
import '../../viewmodel/app_providers.dart';
import '../image_view/svg_view.dart';

class TripperBottomNavBar extends ConsumerStatefulWidget {
  const TripperBottomNavBar({
    Key? key,
    required this.screens,
  }) : super(key: key);

  final List<Widget> screens;

  static _TripperBottomNavBarState? of(BuildContext context) {
    return context.findAncestorStateOfType<ConsumerState<TripperBottomNavBar>>() as _TripperBottomNavBarState?;
  }

  @override
  ConsumerState<TripperBottomNavBar> createState() => _TripperBottomNavBarState();
}

class _TripperBottomNavBarState extends ConsumerState<TripperBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final viewmodel = ref.watch(AppProvidersContainer.tripperViewmodelProvider);

    return PersistentTabView(
      context,
      screens: widget.screens,
      items: _getItemsList(context),
      navBarStyle: NavBarStyle.style12,
      backgroundColor: Theme.of(context).colorScheme.background,
      navBarHeight: 70 + MediaQuery.of(context).padding.bottom,
      controller: viewmodel.controller,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kBr12),
          topRight: Radius.circular(kBr12),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.surfaceVariant,
            spreadRadius: 1,
            blurRadius: 20,
          ),
        ],
      ),
      itemAnimationProperties: const ItemAnimationProperties(
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 300),
      ),
      onItemSelected: viewmodel.changePage,
    );
  }

  List<PersistentBottomNavBarItem> _getItemsList(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPictureView(
          TripperAssets.ksvHomeBarActive,
          height: ksp24,
          width: ksp24,
          color: Theme.of(context).colorScheme.primary,
        ),
        inactiveIcon: SvgPictureView(
          TripperAssets.ksvHomeBarInActive,
          height: ksp16 + ksp4,
          width: ksp16 + ksp4,
        ),
        title: 'point',
        activeColorPrimary: Theme.of(context).colorScheme.primary,
      ),
      // PersistentBottomNavBarItem(
      //   icon: SvgPictureView(
      //     TripperAssets.ksvSearchBarActive,
      //     height: ksp24,
      //     width: ksp24,
      //     color: Theme.of(context).colorScheme.primary,
      //   ),
      //   inactiveIcon: SvgPictureView(
      //     TripperAssets.ksvSearchBarInActive,
      //     height: ksp16 + ksp4,
      //     width: ksp16 + ksp4,
      //   ),
      //   title: 'point',
      //   activeColorPrimary: Theme.of(context).colorScheme.primary,
      // ),
      PersistentBottomNavBarItem(
        icon: SvgPictureView(
          TripperAssets.ksvFavBarActive,
          height: ksp24,
          width: ksp24,
          color: Theme.of(context).colorScheme.primary,
        ),
        inactiveIcon: SvgPictureView(
          TripperAssets.ksvFavBarInActive,
          height: ksp16 + ksp4,
          width: ksp16 + ksp4,
        ),
        title: 'point',
        activeColorPrimary: Theme.of(context).colorScheme.primary,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPictureView(
          TripperAssets.ksvPersonBarActive,
          height: ksp24,
          width: ksp24,
          color: Theme.of(context).colorScheme.primary,
        ),
        inactiveIcon: SvgPictureView(
          TripperAssets.ksvPersonBarInActive,
          height: ksp16 + ksp4,
          width: ksp16 + ksp4,
        ),
        title: 'point',
        activeColorPrimary: Theme.of(context).colorScheme.primary,
      )
    ];
  }
}
