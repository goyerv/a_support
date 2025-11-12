import 'package:flutter/material.dart';
import 'dart:math' as math;

class GradientCircularProgressIndicator extends StatelessWidget {
  final double value;
  final Gradient gradient;
  final double strokeWidth;
  final double radius;

  const GradientCircularProgressIndicator({
    Key? key,
    required this.value,
    required this.gradient,
    this.strokeWidth = 10.0,
    this.radius = 50.0,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(radius * 2),
      painter: _GradientCircularProgressPainter(
        value: value,
        gradient: gradient,
        strokeWidth: strokeWidth,
      ),
    );
  }
}

class _GradientCircularProgressPainter extends CustomPainter {
  final double value;
  final Gradient gradient;
  final double strokeWidth;

  _GradientCircularProgressPainter({
    required this.value,
    required this.gradient,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final startAngle = -math.pi / 2;
    final sweepAngle = 2 * math.pi * value;

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(rect.deflate(strokeWidth / 2), startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(_GradientCircularProgressPainter oldDelegate) {
    return oldDelegate.value != value ||
        oldDelegate.gradient != gradient ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
