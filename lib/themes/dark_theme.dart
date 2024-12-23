import 'package:flutter/material.dart';

class DarkTheme {
  static final theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0XFF1A1A1A),
    colorScheme: const ColorScheme.dark(
      primary: Color(0XFF2A2A2A),
      secondary: Color(0XFF3A3A3A),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0XFF2A2A2A),
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
    Color(0XFF2A2A2A),
    Color(0XFF3A3A3A),
    Color(0XFF4A4A4A),
    Color(0XFF5A5A5A),
  ];

  static const toggleColors = [
    Color(0XFF4B6FA3),
    Color(0XFF395886),
  ];
} 