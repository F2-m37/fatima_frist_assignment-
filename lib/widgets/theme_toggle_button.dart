import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/theme_controller.dart';

class ThemeToggleButton extends GetView<ThemeController> {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      right: 15,
      child: Obx(() => Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: controller.toggleColors,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 4,
                  blurRadius: 8,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(
                controller.isDarkMode
                    ? Icons.nightlight_round
                    : Icons.wb_sunny_rounded,
                color: Colors.white,
                size: 18,
              ),
              padding: EdgeInsets.zero,
              onPressed: controller.toggleTheme,
            ),
          )),
    );
  }
}
