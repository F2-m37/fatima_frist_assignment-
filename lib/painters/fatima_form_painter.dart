import 'package:flutter/material.dart';
import 'dart:math' as math;

class FatimaFormPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0XFF628ECB),
          Color(0XFF4B6FA3),
        ],
      ).createShader(Offset.zero & size)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(0, 0),
      size.width * 0.2,
      paint..color = const Color(0XFF628ECB).withOpacity(0.15),
    );

    final path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width - 100.0, size.height);
    path.lineTo(size.width, size.height - 100.0);
    path.close();
    canvas.drawPath(
        path, paint..color = const Color(0XFF4B6FA3).withOpacity(0.15));

    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, 0),
      width: size.width * 0.5,
      height: size.width * 0.25,
    );
    canvas.drawArc(
      rect,
      0,
      math.pi,
      true,
      paint..color = const Color(0XFF628ECB).withOpacity(0.06),
    );

    final bottomPath = Path();
    bottomPath.moveTo(0, size.height - 40);

    double amplitude = 20.0;
    double period = 40.0;

    for (double i = 0; i <= size.width; i += 2) {
      double y =
          size.height - 40 + amplitude * math.sin((i / period) * math.pi);
      if (i == 0) {
        bottomPath.moveTo(i, y);
      } else {
        bottomPath.lineTo(i, y);
      }
    }

    bottomPath.lineTo(size.width, size.height);
    bottomPath.lineTo(0, size.height);
    bottomPath.close();

    canvas.drawPath(
      bottomPath,
      paint..color = const Color(0XFF628ECB).withOpacity(0.1),
    );

    final circles = [
      {'x': size.width - 60, 'y': size.height - 50, 'r': 8.0},
      {'x': size.width - 40, 'y': size.height - 50, 'r': 6.0},
      {'x': size.width - 20, 'y': size.height - 50, 'r': 4.0},
    ];

    for (var circle in circles) {
      canvas.drawCircle(
        Offset(circle['x']!, circle['y']!),
        circle['r']!,
        paint..color = const Color(0XFF628ECB).withOpacity(0.15),
      );
    }

    final triangles = [
      {'x': 40.0, 'y': size.height - 50},
      {'x': 80.0, 'y': size.height - 50},
      {'x': 120.0, 'y': size.height - 50},
    ];

    for (var triangle in triangles) {
      final trianglePath = Path();
      final size = 10.0;

      trianglePath.moveTo(triangle['x']!, triangle['y']! - size);
      trianglePath.lineTo(triangle['x']! + size, triangle['y']! + size);
      trianglePath.lineTo(triangle['x']! - size, triangle['y']! + size);
      trianglePath.close();

      canvas.drawPath(
        trianglePath,
        paint..color = const Color(0XFF628ECB).withOpacity(0.15),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
