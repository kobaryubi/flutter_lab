import 'package:flutter/gestures.dart';

/// Gesture recognizer that lets only the first pointer reach descendants.
class SingleTouchRecognizer extends OneSequenceGestureRecognizer {
  @override
  String get debugDescription => 'single touch recognizer';

  @override
  void handleEvent(PointerEvent event) {}

  @override
  void didStopTrackingLastPointer(int pointer) {}
}
