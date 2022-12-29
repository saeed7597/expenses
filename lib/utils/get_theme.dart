import 'package:flutter/material.dart';

class ThemeAppConfig {
  final Brightness brightness;
  final Color scaffoldColor;
  final Color background;

  ThemeAppConfig.light()
      : brightness = Brightness.light,
        scaffoldColor = const Color(0xffefefef),
        background = Colors.white
  ;

  ThemeAppConfig.dark()
      : brightness = Brightness.dark,
        background = Colors.black,
        scaffoldColor = const Color(0xff101010);

  ThemeData getTheme(String langCode) {
    return ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: scaffoldColor,
      appBarTheme: AppBarTheme(
          color: background,
      ),
    );
  }
}
