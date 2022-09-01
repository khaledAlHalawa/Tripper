import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/common/constant/constant.dart';
import 'package:app/config/theme/typography.dart';
import 'package:app/config/theme/my_color_scheme.dart';
part 'light_color_scheme.dart';
part 'dark_color_scheme.dart';
part 'utils.dart';

const defaultAppTheme = ThemeMode.light;

final mapAppThemeMode = <String, ThemeMode>{
  ThemeMode.light.name: ThemeMode.light,
  ThemeMode.dark.name: ThemeMode.dark,
  ThemeMode.system.name: ThemeMode.system,
};

final mapAppTheme = <ThemeMode, ThemeData>{
  ThemeMode.light: TripperTheme.light,
  ThemeMode.dark: TripperTheme.dark,
};

class TripperTheme {
  static ThemeData get _builtInLightTheme => ThemeData.light();

  static ThemeData get _builtInDarkTheme => ThemeData.dark();

  static ThemeData get light {
    final textTheme = tripperTextTheme(_builtInLightTheme.textTheme, _lightColorScheme.onBackground);

    return _builtInLightTheme.copyWith(
      colorScheme: _lightColorScheme,
      textTheme: textTheme,
      useMaterial3: true,
      typography: Typography.material2018(),
      elevatedButtonTheme: _elevatedButtonTheme(_lightColorScheme, textTheme),
      textButtonTheme: _textButtonTheme(_lightColorScheme, textTheme),
      scaffoldBackgroundColor: _lightColorScheme.background,
      appBarTheme: _appBarTheme(_builtInLightTheme, _lightColorScheme, textTheme, ThemeMode.light),
      dividerTheme: _dividerTheme(_builtInLightTheme, _lightColorScheme),
    );
  }

  static ThemeData get dark {
    final textTheme = tripperTextTheme(_builtInDarkTheme.textTheme, _darkColorScheme.onBackground);

    return _builtInDarkTheme.copyWith(
      colorScheme: _darkColorScheme,
      textTheme: textTheme,
      useMaterial3: true,
      typography: Typography.material2018(),
      elevatedButtonTheme: _elevatedButtonTheme(_darkColorScheme, textTheme),
      textButtonTheme: _textButtonTheme(_darkColorScheme, textTheme),
      scaffoldBackgroundColor: _darkColorScheme.background,
      appBarTheme: _appBarTheme(_builtInDarkTheme, _darkColorScheme, textTheme, ThemeMode.dark),
      dividerTheme: _dividerTheme(_builtInDarkTheme, _darkColorScheme),
    );
  }
}
