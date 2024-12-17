import 'package:flutter/material.dart';
import 'painters/fatima_container_painter.dart';
import 'painters/fatima_form_painter.dart';
import 'validators/fatima_validators.dart';

class FatimaForm extends StatefulWidget {
  const FatimaForm({super.key});

  @override
  State<FatimaForm> createState() => _FatimaFormState();
}

class _FatimaFormState extends State<FatimaForm> {
  final _formKey = GlobalKey<FormState>();
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
    return Scaffold(
      backgroundColor: const Color(0XFFD5DEEF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              CustomPaint(
                painter: FatimaContainerPainter(),
                foregroundPainter: FatimaFormPainter(),
                child: Container(
                  width: 400,
                  height: 400,
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 45,
                          child: TextFormField(
                            controller: _nameController,
                            validator: FatimaValidators.validateName,
                            decoration: const InputDecoration(
                              hintText: "Fatima Name",
                              hintStyle: TextStyle(
                                color: Color(0XFF8FA6C9),
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color(0XFFD5DEEF),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 45,
                          child: TextFormField(
                            controller: _phoneController,
                            validator: FatimaValidators.validatePhone,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: "Fatima Phone",
                              hintStyle: TextStyle(
                                color: Color(0XFF8FA6C9),
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color(0XFFD5DEEF),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 45,
                          child: TextFormField(
                            controller: _ageController,
                            validator: FatimaValidators.validateAge,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: "Fatima Age",
                              hintStyle: TextStyle(
                                color: Color(0XFF8FA6C9),
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color(0XFFD5DEEF),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 45,
                          child: TextFormField(
                            controller: _emailController,
                            validator: FatimaValidators.validateEmail,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: "Fatima Email",
                              hintStyle: TextStyle(
                                color: Color(0XFF8FA6C9),
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color(0XFFD5DEEF),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0XFF628ECB),
                                Color(0XFF4B6FA3),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                debugPrint('Name: ${_nameController.text}');
                                debugPrint('Phone: ${_phoneController.text}');
                                debugPrint('Age: ${_ageController.text}');
                                debugPrint('Email: ${_emailController.text}');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0XFF395886),
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'OK',
                              style: TextStyle(
                                color: Color(0XFFD5DEEF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -40,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0XFF628ECB),
                          Color(0XFF4B6FA3),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
