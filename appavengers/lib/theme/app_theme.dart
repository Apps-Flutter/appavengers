import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 120, 2, 118);

  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromARGB(255, 120, 2, 118),
    appBarTheme: const AppBarTheme(color: primary),
  );
}
