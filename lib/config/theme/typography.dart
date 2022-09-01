import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'font.dart';

TextTheme tripperTextTheme(TextTheme base, Color textColor) => base
    .copyWith(
      headline1: base.headline1?.copyWith(
        fontSize: _FontSize.heading_01,
        fontWeight: _light,
        letterSpacing: -1.5,
      ),
      headline2: base.headline2?.copyWith(
        fontSize: _FontSize.heading_02,
        fontWeight: _light,
        letterSpacing: -0.5,
      ),
      headline3: base.headline3?.copyWith(
        fontSize: _FontSize.heading_03,
        fontWeight: _bold,
      ),
      headline4: base.headline4?.copyWith(
        fontSize: _FontSize.heading_04,
        fontWeight: _regular,
        letterSpacing: 0.25,
      ),
      headline5: base.headline5?.copyWith(
        fontSize: _FontSize.heading_05,
        fontWeight: _bold,
      ),
      headline6: base.headline6?.copyWith(
        fontSize: _FontSize.heading_06,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: base.subtitle1?.copyWith(
        fontSize: _FontSize.subtitle_01,
        fontWeight: _bold,
        letterSpacing: 0.15,
      ),
      subtitle2: base.subtitle2?.copyWith(
        fontSize: _FontSize.subtitle_02,
        fontWeight: _bold,
        letterSpacing: 0.1,
      ),
      bodyText1: base.bodyText1?.copyWith(
        fontSize: _FontSize.body_01,
        fontWeight: _regular,
        letterSpacing: 0.5,
      ),
      bodyText2: base.bodyText2?.copyWith(
        fontSize: _FontSize.body_02,
        fontWeight: _regular,
        letterSpacing: 0.25,
      ),
      button: base.button?.copyWith(
        fontSize: _FontSize.button,
        fontWeight: _bold,
        letterSpacing: 1.25,
      ),
      caption: base.caption?.copyWith(
        fontSize: _FontSize.caption,
        fontWeight: _regular,
        letterSpacing: 0.4,
      ),
      overline: base.overline?.copyWith(
        fontSize: _FontSize.overline,
        fontWeight: _regular,
        letterSpacing: 1.5,
      ),
    )
    .apply(
      fontFamily: _almariFamily,
      displayColor: textColor,
      bodyColor: textColor,
    );
