import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Inter',
        scaffoldBackgroundColor: const Color(0xFFF9FAFB),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      );
}
