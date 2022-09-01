part of 'tripper_theme.dart';

final mapCustomThemeData = <ThemeMode, ThemeData>{
  ThemeMode.dark: TripperTheme.dark,
  ThemeMode.light: TripperTheme.light,
};

ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme scheme, TextTheme textTheme) => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: textTheme.button,
        primary: scheme.primary,
        onPrimary: scheme.onPrimary,
        onSurface: scheme.onSurface,
        minimumSize: Size(double.infinity, 50.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kBr12)),
      ),
    );

TextButtonThemeData _textButtonTheme(ColorScheme scheme, TextTheme textTheme) => TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: textTheme.button,
        onPrimary: scheme.grey600,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kBr8)),
      ),
    );

AppBarTheme _appBarTheme(ThemeData theme, ColorScheme scheme, TextTheme textTheme, ThemeMode themeMode) =>
    theme.appBarTheme.copyWith(
      backgroundColor: scheme.background,
      titleTextStyle: textTheme.headline5,
      systemOverlayStyle: themeMode == ThemeMode.dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      elevation: 0.0,
      surfaceTintColor: scheme.surface
    );

DividerThemeData _dividerTheme(ThemeData theme, ColorScheme scheme) =>
    theme.dividerTheme.copyWith(
      color: scheme.grey100.withOpacity(0.2),
      thickness: 1
    );
