import 'package:flutter/material.dart';
import 'fatima_text_field.dart';
import 'fatima_submit_button.dart';
import '../validators/fatima_validators.dart';
import '../painters/fatima_form_painter.dart';
import '../painters/fatima_container_painter.dart';

class FatimaFormContainer extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const FatimaFormContainer({
    super.key,
    required this.formKey,
  });

  @override
  State<FatimaFormContainer> createState() => _FatimaFormContainerState();
}

class _FatimaFormContainerState extends State<FatimaFormContainer> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _ageController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _ageController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: FatimaContainerPainter(),
      foregroundPainter: FatimaFormPainter(),
      child: Container(
        width: 400,
        height: 450,
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: widget.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              FatimaTextField(
                hintText: "Fatima Name",
                controller: _nameController,
                validator: FatimaValidators.validateName,
              ),
              const SizedBox(height: 10),
              FatimaTextField(
                hintText: "Fatima Phone",
                controller: _phoneController,
                validator: FatimaValidators.validatePhone,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 10),
              FatimaTextField(
                hintText: "Fatima Age",
                controller: _ageController,
                validator: FatimaValidators.validateAge,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              FatimaTextField(
                hintText: "Fatima Email",
                controller: _emailController,
                validator: FatimaValidators.validateEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              FatimaSubmitButton(
                onPressed: () {
                  final formState = widget.formKey.currentState;
                  if (formState != null && formState.validate()) {
                    debugPrint('Name: ${_nameController.text}');
                    debugPrint('Phone: ${_phoneController.text}');
                    debugPrint('Age: ${_ageController.text}');
                    debugPrint('Email: ${_emailController.text}');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
} 