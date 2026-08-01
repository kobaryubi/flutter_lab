import 'package:flutter/gestures.dart';

/// Gesture recognizer that lets only the first pointer reach descendants.
///
/// For the first pointer it rejects itself in the gesture arena, so
/// descendant recognizers win and taps work as usual. While that pointer is
/// still down, it claims every additional pointer as accepted, so descendant
/// recognizers lose and simultaneous second taps are ignored.
class SingleTouchRecognizer extends OneSequenceGestureRecognizer {
  /// Pointer id of the first touch currently on screen, or 0 when idle.
  int _activePointer = 0;

  @override
  String get debugDescription => 'single touch recognizer';

  /// Called once per pointer that touches inside this recognizer's region,
  /// right after the pointer has been entered into the gesture arena.
  @override
  void addAllowedPointer(PointerDownEvent event) {
    // Subscribe to this pointer's follow-up events (move/up/cancel) so
    // `handleEvent` can observe when the first finger is lifted. This is
    // what the base implementation does as well.
    startTrackingPointer(event.pointer, event.transform);

    if (_activePointer == 0) {
      // First finger: remember it and withdraw from its arena, so descendant
      // recognizers (e.g. a button's tap recognizer) win and behave normally.
      _activePointer = event.pointer;
      resolve(.rejected);
    } else {
      // Additional finger while the first is still down: claim victory in
      // its arena. Descendant recognizers lose immediately, so their `onTap`
      // never fires for this pointer, and this recognizer itself does
      // nothing with it — the tap is effectively swallowed.
      resolve(.accepted);
    }
  }

  /// Receives follow-up events of tracked pointers. Losing the arena via
  /// `resolve(.rejected)` does not stop tracking, so the first pointer's
  /// release still arrives here.
  @override
  void handleEvent(PointerEvent event) {
    // When the first finger is lifted (up/cancel), go back to idle so the
    // next touch is treated as a fresh first pointer again.
    if (!event.down && event.pointer == _activePointer) {
      _activePointer = 0;
    }
  }

  @override
  void didStopTrackingLastPointer(int pointer) {}
}
