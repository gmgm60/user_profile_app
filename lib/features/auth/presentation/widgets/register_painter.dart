import 'package:flutter/material.dart';
import 'dart:ui' as ui show Image;

class RegisterPainter extends CustomPainter {
  final ui.Image background;

  RegisterPainter({required this.background});

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    //1
    final colors = [Colors.blue, Colors.blue, Colors.blue];
//2
    final stops = [0.1, 0.3, 0.10];
//3
    final gradient = LinearGradient(colors: colors, stops: stops);

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..shader = gradient.createShader(
          Rect.fromCircle(center: Offset.zero, radius: width / 2));

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, height-30)
      ..quadraticBezierTo(width / 6, height - height / 6, width / 3, height)
      ..quadraticBezierTo(width / 2.5, height + height / 10, width / 1.5, height)
      ..quadraticBezierTo(width / 1.25, height - height / 15, width, height+20)
      ..lineTo(width, 0)
      ..lineTo(0, 0);

    canvas.drawPath(
        path,
        paint
          ..shader = ImageShader(background, TileMode.clamp, TileMode.clamp,
              Matrix4.identity().storage));
    //  canvas.drawImage(background, Offset.zero, paint);
    // canvas.clipPath(path);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}