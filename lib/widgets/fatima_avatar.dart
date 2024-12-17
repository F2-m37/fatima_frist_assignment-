import 'package:flutter/material.dart';

class FatimaAvatar extends StatelessWidget {
  const FatimaAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
} 