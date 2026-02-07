import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A pulsing dots animation with 3 dots that pulse in staggered sequence.
class PulsingDotsAnimation extends HookWidget {
  const PulsingDotsAnimation({super.key});

  static const _dotCount = 3;
  static const _dotSize = 12.0;
  static const _dotSpacing = 8.0;
  static const _animationDuration = Duration(milliseconds: 1200);

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: _animationDuration,
    );

    useEffect(
      () {
        controller.repeat();
        return null;
      },
      [controller],
    );

    return Row(
      mainAxisSize: .min,
      children: List.generate(
        _dotCount,
        (index) => _buildDot(controller: controller, index: index),
      ),
    );
  }

  Widget _buildDot({
    required AnimationController controller,
    required int index,
  }) {
    final start = index * 0.2;
    final end = start + 0.5;

    final scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(start, end.clamp(0.0, 1.0), curve: Curves.easeInOut),
      ),
    );

    final opacityAnimation = Tween<double>(begin: 0.3, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(start, end.clamp(0.0, 1.0), curve: Curves.easeInOut),
      ),
    );

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => Padding(
        padding: const .symmetric(horizontal: _dotSpacing / 2),
        child: Transform.scale(
          scale: scaleAnimation.value,
          child: Opacity(
            opacity: opacityAnimation.value,
            child: child,
          ),
        ),
      ),
      child: Container(
        width: _dotSize,
        height: _dotSize,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
          shape: .circle,
        ),
      ),
    );
  }
}
