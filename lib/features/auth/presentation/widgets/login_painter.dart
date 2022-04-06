import 'package:flutter/material.dart';
import 'dart:ui' as ui show Image;

class LoginPainter extends CustomPainter {
  final ui.Image background;

  LoginPainter({required this.background});

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0
      ..shader = ImageShader(background, TileMode.clamp, TileMode.clamp,
          Matrix4.identity().storage);

    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height*0.8347667);
    path0.quadraticBezierTo(size.width*0.2418571,size.height*0.6706667,size.width*0.4859504,size.height*0.8333333);
    path0.quadraticBezierTo(size.width*0.7293632,size.height*0.9968333,size.width,size.height*0.8335667);
    path0.lineTo(size.width,0);
    path0.lineTo(0,0);
    path0.close();

    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
