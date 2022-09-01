import 'package:flutter/material.dart';
import 'package:app/core/utils/extensions/build_context.dart';

abstract class ThemeProvider<T extends StatefulWidget> extends State<T> {
  late ThemeData theme;
  late TextTheme textTheme;
  late ColorScheme colorScheme;


  @override
  void didChangeDependencies() {
    theme = context.theme;
    textTheme = theme.textTheme;
    colorScheme = theme.colorScheme;
    super.didChangeDependencies();
  }
}

