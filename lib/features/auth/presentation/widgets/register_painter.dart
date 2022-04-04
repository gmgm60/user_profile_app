import 'package:flutter/material.dart';
import 'dart:ui' as ui show Image;

class RegisterPainter extends CustomPainter {
  final ui.Image background;

  RegisterPainter({required this.background});

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..shader = ImageShader(background, TileMode.clamp, TileMode.clamp,
          Matrix4.identity().storage);

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, height - 30)
      ..quadraticBezierTo(width / 6, height - height / 6, width / 3, height)
      ..quadraticBezierTo(
          width / 2.5, height + height / 10, width / 1.5, height)
      ..quadraticBezierTo(
          width / 1.25, height - height / 15, width, height + 20)
      ..lineTo(width, 0)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
