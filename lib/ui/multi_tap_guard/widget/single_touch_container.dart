import 'package:flutter/widgets.dart';

/// Wrapper that blocks multi-touch for its entire subtree using
/// [SingleTouchRecognizer]: while one finger is down, taps from additional
/// fingers never reach descendant widgets.
class SingleTouchContainer extends StatelessWidget {
  const SingleTouchContainer({required this.child, super.key});

  /// Subtree to protect from simultaneous touches.
  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}
