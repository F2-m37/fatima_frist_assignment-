import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'fatima_home_page.dart';
import 'controllers/theme_controller.dart';
import 'themes/light_theme.dart';
import 'themes/dark_theme.dart';

void main() {
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fatima App',
      debugShowCheckedModeBanner: false,
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      home: const FatimaHomePage(),
    );
  }
}
