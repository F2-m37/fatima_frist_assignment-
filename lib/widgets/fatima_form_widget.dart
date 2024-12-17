import 'package:flutter/material.dart';
import 'fatima_text_field.dart';
import 'fatima_submit_button.dart';
import 'fatima_avatar.dart';
import 'fatima_form_container.dart';

class FatimaForm extends StatefulWidget {
  const FatimaForm({super.key});

  @override
  State<FatimaForm> createState() => _FatimaFormState();
}

class _FatimaFormState extends State<FatimaForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFD5DEEF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              FatimaFormContainer(formKey: _formKey),
              const FatimaAvatar(),
            ],
          ),
        ),
      ),
    );
  }
} 