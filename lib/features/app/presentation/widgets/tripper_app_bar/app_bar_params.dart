import 'package:flutter/material.dart';

import 'app_bar_utils.dart';

class AppBarParams {
  AppBarParams({
    required this.leadingAppBar,
    this.translateTitle = true,
    this.title,
    this.action,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.backgroundColor,
  });

  final LeadingAppBar leadingAppBar;
  final String? title;
  final List<Widget>? action;
  final bool translateTitle;
  final double? elevation;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final Color? backgroundColor;

  @override
  String toString() {
    return 'AppBarParams{leadingAppBar: $leadingAppBar, title: $title, action: $action, translateTitle: $translateTitle}';
  }
}
