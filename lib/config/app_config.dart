import 'package:flutter/material.dart';

class AppConfig {
  static const String appName = 'Anki Samurai';

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('es'),
  ];

  static const Locale defaultLocale = Locale('en');
}