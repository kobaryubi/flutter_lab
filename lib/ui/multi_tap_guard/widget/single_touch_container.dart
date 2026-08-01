import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/multi_tap_guard/widget/single_touch_recognizer.dart';

/// Wrapper that blocks multi-touch for its entire subtree using
/// [SingleTouchRecognizer]: while one finger is down, taps from additional
/// fingers never reach descendant widgets.
class SingleTouchContainer extends StatelessWidget {
  const SingleTouchContainer({required this.child, super.key});

  /// Subtree to protect from simultaneous touches.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    /// Creates the recognizer instance owned by the detector.
    SingleTouchRecognizer createRecognizer() => SingleTouchRecognizer();

    /// Nothing to (re)configure on the recognizer after creation.
    void initializeRecognizer(SingleTouchRecognizer recognizer) {}

    return RawGestureDetector(
      gestures: {
        SingleTouchRecognizer:
            GestureRecognizerFactoryWithHandlers<SingleTouchRecognizer>(
              createRecognizer,
              initializeRecognizer,
            ),
      },
      child: child,
    );
  }
}
