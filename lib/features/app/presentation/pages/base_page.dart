import 'package:app/features/favorite/presentation/pages/favorite_page.dart';
import 'package:app/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../../../profile/presentation/pages/profile_page.dart';
import '../widgets/tripper_app_bar/app_bar_params.dart';
import '../widgets/tripper_app_bar/app_bar_utils.dart';
import '../widgets/tripper_app_bar/tripper_appbar.dart';
import '../widgets/tripper_drawer/tripper_drawer.dart';
import '../widgets/tripper_nav_bar/tripper_bottom_nav_bar.dart';

class BasePage extends StatefulWidget {
  const BasePage._({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();

  static Future<dynamic> here(BuildContext context) => Navigator.of(context).pushAndRemoveUntil(pageRoute,(route) => false);

  static Route get pageRoute => MaterialPageRoute(builder: (_) => const BasePage._());
}

class _BasePageState extends State<BasePage> {

  final List<Widget> _screens = [
    const HomePage(),
    // const SearchPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return TripperDrawer(
      child: Scaffold(
        appBar: TripperAppBar(appBarParams: AppBarParams(leadingAppBar: LeadingAppBar.menu)),
        body: TripperBottomNavBar(screens: _screens),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
