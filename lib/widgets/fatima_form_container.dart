import 'package:flutter/material.dart';
import 'fatima_text_field.dart';
import 'fatima_submit_button.dart';
import '../validators/fatima_validators.dart';
import '../painters/fatima_form_painter.dart';
import '../painters/fatima_container_painter.dart';
import 'package:get/get.dart';
import '../controllers/theme_controller.dart';
import '../controllers/form_controller.dart';

class FatimaFormContainer extends GetView<ThemeController> {
  final GlobalKey<FormState> formKey;
  final formController = Get.put(FormController());

  FatimaFormContainer({
    super.key,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (controller) => CustomPaint(
        painter: FatimaContainerPainter(),
        child: Container(
          width: 400,
          height: 450,
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                FatimaTextField(
                  hintText: "Fatima Name",
                  controller: formController.nameController,
                  validator: FatimaValidators.validateName,
                ),
                const SizedBox(height: 10),
                FatimaTextField(
                  hintText: "Fatima Phone",
                  controller: formController.phoneController,
                  validator: FatimaValidators.validatePhone,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 10),
                FatimaTextField(
                  hintText: "Fatima Age",
                  controller: formController.ageController,
                  validator: FatimaValidators.validateAge,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                FatimaTextField(
                  hintText: "Fatima Email",
                  controller: formController.emailController,
                  validator: FatimaValidators.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                FatimaSubmitButton(
                  onPressed: () {
                    final formState = formKey.currentState;
                    if (formState != null && formState.validate()) {
                      debugPrint('Name: ${formController.nameController.text}');
                      debugPrint('Phone: ${formController.phoneController.text}');
                      debugPrint('Age: ${formController.ageController.text}');
                      debugPrint('Email: ${formController.emailController.text}');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
