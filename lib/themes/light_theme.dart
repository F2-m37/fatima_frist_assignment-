import 'package:flutter/material.dart';

class LightTheme {
  static final theme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0XFFD5DEEF),
    colorScheme: const ColorScheme.light(
      primary: Color(0XFF628ECB),
      secondary: Color(0XFF4B6FA3),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0XFFD5DEEF),
      hintStyle: const TextStyle(
        color: Color(0XFF8FA6C9),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 0,
      ),
    ),
  );

  static const gradientColors = [
    Color(0XFF7BA3E0),
    Color(0XFF628ECB),
    Color(0XFF4B6FA3),
    Color(0XFF395886),
  ];

  static const toggleColors = [
    Color(0XFFFFD700),
    Color(0XFFFFA500),
  ];
} 