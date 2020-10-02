import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 25,
      ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    path.lineTo(0, size.height * 0.75);

    path.quadraticBezierTo(
        0, size.height * 30, size.width * 15, size.height * 85);
    path.quadraticBezierTo(0.10, 0.20, 0.30, 0.15);
    paint.color = Colors.white24;
    path.close();
    canvas.drawPath(path, paint);

    // 2nd path
    path = Path();
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        0, size.height * 30, size.width * 35, size.height * -22);
    path.quadraticBezierTo(0.10, 0.20, 0.3, 0.20);
    paint.color = Colors.black;
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
