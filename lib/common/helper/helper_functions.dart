import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HelperFunctions {
  static changeAppStatus(ThemeMode theme){
    final color = theme == ThemeMode.dark ? const Color(0xFF191C1D) : const Color(0xFFFBFDFD);
    final brightness = theme == ThemeMode.light ? Brightness.dark : Brightness.light;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: brightness,
      ),
    );
  }
}