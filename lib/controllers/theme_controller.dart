import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final _isDarkMode = false.obs;
  
  bool get isDarkMode => _isDarkMode.value;

  List<Color> get gradientColors => _isDarkMode.value ? darkGradientColors : lightGradientColors;
  List<Color> get toggleColors => _isDarkMode.value ? darkToggleColors : lightToggleColors;
  Color get backgroundColor => _isDarkMode.value ? darkBackground : lightBackground;

  static const lightGradientColors = [
    Color(0XFF7BA3E0),
    Color(0XFF628ECB),
    Color(0XFF4B6FA3),
    Color(0XFF395886),
  ];

  static const darkGradientColors = [
    Color(0XFF2A2A2A),
    Color(0XFF3A3A3A),
    Color(0XFF4A4A4A),
    Color(0XFF5A5A5A),
  ];

  static const lightToggleColors = [
    Color(0XFFFFD700),
    Color(0XFFFFA500),
  ];

  static const darkToggleColors = [
    Color(0XFF4B6FA3),
    Color(0XFF395886),
  ];

  static const lightBackground = Color(0XFFD5DEEF);
  static const darkBackground = Color(0XFF1A1A1A);

  void toggleTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeTheme(
      _isDarkMode.value ? ThemeData.dark() : ThemeData.light(),
    );
    update();
  }
} 