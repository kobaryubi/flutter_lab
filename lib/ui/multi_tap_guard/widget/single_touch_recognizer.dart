import 'package:flutter/gestures.dart';

/// Gesture recognizer that lets only the first pointer reach descendants.
class SingleTouchRecognizer extends OneSequenceGestureRecognizer {
  /// Pointer id of the first touch currently on screen, or 0 when idle.
  int _activePointer = 0;

  @override
  String get debugDescription => 'single touch recognizer';

  @override
  void handleEvent(PointerEvent event) {
    if (!event.down && event.pointer == _activePointer) {
      _activePointer = 0;
    }
  }

  @override
  void didStopTrackingLastPointer(int pointer) {}
}
