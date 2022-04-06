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

   // canvas.drawPath(path, paint);


    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(0,size.height*0.8353333);
    path0.quadraticBezierTo(size.width*0.1828877,size.height*0.8189667,size.width*0.3645357,size.height*0.9139667);
    path0.cubicTo(size.width*0.4645600,size.height*0.9762667,size.width*0.6236266,size.height*0.8922000,size.width*0.7298250,size.height*0.9017333);
    path0.quadraticBezierTo(size.width*0.8636121,size.height*0.9131000,size.width,size.height);
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
