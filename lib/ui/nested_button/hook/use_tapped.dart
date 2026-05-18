import 'package:flutter/gestures.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Pressed state and the tap handlers that update it, produced by [useTapped].
typedef TappedState = ({
  bool isTapped,
  GestureTapDownCallback onTapDown,
  GestureTapUpCallback onTapUp,
  GestureTapCancelCallback onTapCancel,
});

/// Tracks whether a widget is currently pressed.
///
/// Returns the current pressed flag together with the tap handlers that update
/// it. Wire the handlers into a GestureDetector.
TappedState useTapped() {
  final isTapped = useState(false);

  /// Marks the widget as pressed when the pointer goes down.
  void handleTapDown(TapDownDetails details) {
    isTapped.value = true;
  }

  /// Clears the pressed state when the pointer is released.
  void handleTapUp(TapUpDetails details) {
    isTapped.value = false;
  }

  /// Clears the pressed state when the gesture is cancelled.
  void handleTapCancel() {
    isTapped.value = false;
  }

  return (
    isTapped: isTapped.value,
    onTapDown: handleTapDown,
    onTapUp: handleTapUp,
    onTapCancel: handleTapCancel,
  );
}
