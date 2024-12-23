import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../controllers/theme_controller.dart';

class FatimaContainerPainter extends CustomPainter {
  final themeController = Get.find<ThemeController>();

  @override
  void paint(Canvas canvas, Size size) {
    final mainPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 0.3, 0.7, 1.0],
        colors: themeController.gradientColors,
      ).createShader(Offset.zero & size)
      ..style = PaintingStyle.fill;

    final backgroundPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(6, 6, size.width - 2, size.height - 2),
          const Radius.circular(30),
        ),
      );

    canvas.drawPath(
      backgroundPath,
      Paint()
        ..color = Colors.black.withOpacity(0.15)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10),
    );

    final mainPath = Path();

    final cornerRadius = 30.0;
    final cutoutSize = 35.0;
    final curveControl = 40.0;

    mainPath.moveTo(cornerRadius, 0);

    mainPath.lineTo(size.width - cutoutSize - cornerRadius, 0);
    mainPath.arcToPoint(
      Offset(size.width - cutoutSize, cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    mainPath.quadraticBezierTo(
      size.width - cutoutSize / 2,
      cutoutSize / 2,
      size.width,
      cutoutSize + cornerRadius,
    );
    mainPath.quadraticBezierTo(
      size.width,
      cutoutSize + cornerRadius,
      size.width,
      cutoutSize + cornerRadius * 2,
    );

    mainPath.lineTo(size.width, size.height - cornerRadius);
    mainPath.arcToPoint(
      Offset(size.width - cornerRadius, size.height),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );

    mainPath.lineTo(cutoutSize + cornerRadius, size.height);
    mainPath.arcToPoint(
      Offset(cutoutSize, size.height - cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    mainPath.quadraticBezierTo(
      cutoutSize / 2,
      size.height - cutoutSize / 2,
      0,
      size.height - cutoutSize - cornerRadius,
    );

    mainPath.lineTo(0, cornerRadius);
    mainPath.arcToPoint(
      Offset(cornerRadius, 0),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );

    mainPath.close();

    canvas.drawPath(
      mainPath,
      Paint()
        ..color = Colors.black.withOpacity(0.08)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3),
    );

    canvas.drawPath(mainPath, mainPaint);

    final highlightPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.4),
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.0),
        ],
        stops: const [0.0, 0.3, 0.6],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(mainPath, highlightPaint);

    canvas.drawPath(
      mainPath,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = const Color(0XFF395886).withOpacity(0.5)
        ..strokeWidth = 0.5,
    );

    final decorPaint = Paint()
      ..color = Colors.white.withOpacity(0.15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    void drawCornerDecoration(Offset center, double startAngle) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: 20),
        startAngle,
        math.pi / 2,
        false,
        decorPaint,
      );
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: 15),
        startAngle + math.pi / 6,
        math.pi / 3,
        false,
        decorPaint,
      );
    }

    drawCornerDecoration(
      Offset(cutoutSize, size.height - cutoutSize),
      math.pi / 4,
    );
    drawCornerDecoration(
      Offset(size.width - cutoutSize, cutoutSize),
      -3 * math.pi / 4,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
