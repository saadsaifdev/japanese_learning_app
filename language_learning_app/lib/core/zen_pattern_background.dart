import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:language_learning_app/core/theme.dart';

class ZenPatternBackground extends StatelessWidget {
  const ZenPatternBackground({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: CustomPaint(
            painter: _SeigaihaPainter(),
          ),
        ),
        child,
      ],
    );
  }
}

class _SeigaihaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = AppTheme.deepIndigo.withValues(alpha: 0.06);
    const double radius = 28;
    const double horizontalSpacing = radius;
    const double verticalSpacing = radius * 0.75;

    for (double y = 0; y <= size.height + radius; y += verticalSpacing) {
      final bool isOffsetRow = ((y / verticalSpacing).round().isOdd);
      for (double x = isOffsetRow ? -radius : 0;
          x <= size.width + radius;
          x += horizontalSpacing) {
        final Rect arcRect =
            Rect.fromCircle(center: Offset(x, y), radius: radius);
        canvas.drawArc(arcRect, math.pi, math.pi, false, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
