import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating AnimatedSwitcher with decelerate curve.
class AnimatedSwitcherScreen extends StatelessWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('AnimatedSwitcher')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    /// Increments the counter to trigger AnimatedSwitcher transition.
    void handleTap() {
      counter.value++;
    }

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          const SizedBox(height: 32),

          const Text('Crossfade (default)', style: TextStyle(fontSize: 14)),

          const SizedBox(height: 8),

          AnimatedSwitcher(
            duration: const Duration(seconds: 3),
            switchInCurve: Curves.decelerate,
            switchOutCurve: Curves.decelerate,
            child: Text(
              '${counter.value}',
              key: ValueKey<int>(counter.value),
              style: const TextStyle(fontSize: 48),
            ),
          ),

          const SizedBox(height: 48),

          const Text(
            'Sequential (out → in)',
            style: TextStyle(fontSize: 14),
          ),

          const SizedBox(height: 8),

          _HookControllerCase(counter: counter.value),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: handleTap,
            child: const Text(
              'Tap to switch',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

/// Sequential fade using useAnimationController hook.
///
/// Fades out the old value first, then fades in the new value
/// by chaining animations via status listener.
class _HookControllerCase extends HookWidget {
  const _HookControllerCase({required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    final displayValue = useState(0);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1500),
      initialValue: 1,
    );
    final curvedAnimation = useMemoized(
      () => CurvedAnimation(parent: controller, curve: Curves.decelerate),
      [controller],
    );
    final opacity = useAnimation(curvedAnimation);

    useEffect(
      () {
        /// Handles animation completion to swap value and fade back in.
        void handleStatusChange(AnimationStatus status) {
          if (status == AnimationStatus.dismissed) {
            displayValue.value = counter;
            controller.forward();
          }
        }

        controller
          ..addStatusListener(handleStatusChange)
          /// Starts fade-out when counter changes.
          ..reverse();

        return () => controller.removeStatusListener(handleStatusChange);
      },
      [counter],
    );

    return Opacity(
      opacity: opacity,
      child: Text(
        '${displayValue.value}',
        style: const TextStyle(fontSize: 48),
      ),
    );
  }
}
