import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var path = Path();
    print("width: ${size.width}, height: ${size.height}");
    print("clip area from: (0, ${size.height}) to (${size.width}, 0})");
    path.lineTo(0, size.height);
    final p1 = Offset(0, size.height - 20);
    final p2 = Offset(30, size.height - 20);
    path.quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy);

    final q1 = Offset(0, size.height - 20);
    final q2 = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(q1.dx, q1.dy, q2.dx, q2.dy);

    final r1 = Offset(size.width, size.height - 20);
    final r2 = Offset(size.width, size.height);
    path.quadraticBezierTo(r1.dx, r1.dy, r2.dx, r2.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
   return true;
  }
  
}