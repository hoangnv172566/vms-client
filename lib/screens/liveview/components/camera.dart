import 'package:flutter/material.dart';

class CameraWg extends StatelessWidget {
  const CameraWg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            width: constraints.maxWidth, // Use the full width of the parent
            color: Color.fromARGB(255, 161, 159, 159),
            child: CustomPaint(
              painter: CanvasPainter(),
            )
          )
        );
      },
    );
  }
}

class CanvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // You can paint anything you like on the canvas here
    final paint = Paint()
      ..color = Color.fromARGB(255, 161, 159, 159)
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    // Example: Drawing a rectangle
    canvas.drawRect(
      Rect.fromLTWH(10, 10, size.width - 20, size.height - 20), // Position and size of the rectangle
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // Return true if the painting needs to be redrawn
  }
}