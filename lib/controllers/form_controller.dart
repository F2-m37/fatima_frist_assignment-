import 'package:get/get.dart';
import 'package:flutter/material.dart';

class FormController extends GetxController {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final ageController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    ageController.dispose();
    emailController.dispose();
    super.onClose();
  }
} 