import 'package:flutter/material.dart';

class ThemeAppConfig {
  final Brightness brightness;
  final Color scaffoldColor;
  final Color primaryColor;

  ThemeAppConfig.light()
      : brightness = Brightness.light,
        scaffoldColor = const Color(0xffefefef),
        primaryColor = Colors.white
  ;

  ThemeAppConfig.dark()
      : brightness = Brightness.dark,
        primaryColor = Colors.black,
        scaffoldColor = const Color(0xff000000);

  ThemeData getTheme(String langCode) {
    return ThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldColor,
      appBarTheme: AppBarTheme(
          color: primaryColor,
      ),
    );
  }
}
