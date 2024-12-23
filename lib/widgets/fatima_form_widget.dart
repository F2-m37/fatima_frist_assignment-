import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/theme_controller.dart';
import 'fatima_form_container.dart';
import 'fatima_avatar.dart';
import 'theme_toggle_button.dart';

class FatimaForm extends GetView<ThemeController> {
  const FatimaForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return GetBuilder<ThemeController>(
      builder: (controller) => Scaffold(
        backgroundColor: controller.backgroundColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                FatimaFormContainer(
                  formKey: formKey,
                ),
                const FatimaAvatar(),
                const ThemeToggleButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
