import 'package:flutter/material.dart';

extension MyColorScheme on ColorScheme {
  static const MaterialColor _grey = MaterialColor(
    _primaryGreyValue,
    <int, Color>{
      100 : Color(0xffE9E9E9),
      50  : Color(0xffc9c9c9),
      200 : Color(0xff9f9f9f),
      300 : Color(0xff707070),
      400 : Color(_primaryGreyValue),
      600 : Color(0xff383838),
    },
  );

  static const int _primaryGreyValue = 0xff585858;

  static const MaterialColor _hint = MaterialColor(
    _primaryHintValue,
    <int, Color>{},
  );

  static const int _primaryHintValue = 0xff9f9f9f;

  static const MaterialColor _drawer = MaterialColor(
    _primaryPrimaryValue,
    <int, Color>{},
  );

  static const int _primaryPrimaryValue = 0xff2A2E43;

  static const MaterialColor _white = MaterialColor(
    _primaryWhiteValue,
    <int, Color>{},
  );

  static const int _primaryYellowValue = 0xffFFD500;

  static const MaterialColor _yellow = MaterialColor(
    _primaryYellowValue,
    <int, Color>{},
  );

  static const int _primaryWhiteValue = 0xffFEFEFE;

  MaterialColor get hint => brightness == Brightness.light ? _hint : _hint;

  Color get grey100 => brightness == Brightness.light ? _grey.shade100 : _grey.shade100;

  Color get grey200 => brightness == Brightness.light ? _grey.shade200 : _grey.shade200;

  Color get grey300 => brightness == Brightness.light ? _grey.shade300 : _grey.shade300;

  Color get grey => brightness == Brightness.light ? _grey.shade400 : _grey.shade400;

  Color get grey600 => brightness == Brightness.light ? _grey.shade600 : _grey.shade600;

  Color get greyBorder => brightness == Brightness.light ? _grey.shade50 : _grey.shade50;

  Color get drawer => brightness == Brightness.light ? _drawer : _drawer;

  Color get white => brightness == Brightness.light ? _white : _white;

  Color get yellow => brightness == Brightness.light ? _yellow : _yellow;
}



Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}
