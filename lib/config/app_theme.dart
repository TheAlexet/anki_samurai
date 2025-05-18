import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFFF6560);
  static const Color scaffoldBackground = Color(0xFFF5F5F5);
  static const Color navIconColor = Colors.black87;
  static const Color navIconUnselected = Colors.black54;

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    fontFamily: 'Quicksand',
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    scaffoldBackgroundColor: scaffoldBackground,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: navIconColor,
      unselectedItemColor: navIconUnselected,
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
