
import 'package:expenses/screens/home.dart';
import 'package:expenses/utils/get_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Locale _locale = const Locale('en');
  ThemeMode _themeMode = ThemeMode.light;

  updateThemeApp() {
    setState(() {
      _themeMode == ThemeMode.light
          ? _themeMode = ThemeMode.dark
          : _themeMode = ThemeMode.light;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      theme: _themeMode == ThemeMode.light
         ? ThemeAppConfig.light().getTheme(_locale.languageCode)
         : ThemeAppConfig.dark().getTheme(_locale.languageCode),
      home: Home(
        onTab: (){updateThemeApp();},
        themeMode: _themeMode,
      ),
    );
  }
}


