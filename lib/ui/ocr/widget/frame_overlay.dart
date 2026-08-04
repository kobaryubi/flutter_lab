import 'package:flutter/widgets.dart';

/// Fraction of the preview width occupied by the frame.
const _frameWidthFactor = 0.8;

/// Fraction of the preview height occupied by the frame.
const _frameHeightFactor = 0.3;

/// Paints a centered rectangular frame and dims the area outside it.
class FrameOverlayPainter extends CustomPainter {
  const FrameOverlayPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final frameRect = Rect.fromCenter(
      center: size.center(.zero),
      width: size.width * _frameWidthFactor,
      height: size.height * _frameHeightFactor,
    );

    // Fill everything except the frame using the even-odd rule.
    final dimPath = Path()
      ..addRect(Offset.zero & size)
      ..addRect(frameRect)
      ..fillType = PathFillType.evenOdd;
    canvas.drawPath(dimPath, Paint()..color = const Color(0x99808080));

    final borderPaint = Paint()
      ..style = .stroke
      ..strokeWidth = 2
      ..color = const Color(0xFFFFFFFF);
    canvas.drawRect(frameRect, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
