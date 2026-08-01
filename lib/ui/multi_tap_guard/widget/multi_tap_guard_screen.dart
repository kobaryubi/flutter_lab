import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/multi_tap_guard/widget/single_touch_container.dart';

/// Screen that demonstrates how to prevent double navigation when two
/// navigation buttons are tapped simultaneously with multi-touch.
class MultiTapGuardScreen extends StatelessWidget {
  const MultiTapGuardScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Multi Tap Guard')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    // Shared navigation lock. Both handlers check it synchronously before
    // pushing, so the second of two simultaneous taps is ignored. `useRef`
    // keeps the value across rebuilds without triggering a rebuild.
    final isNavigating = useRef(false);

    /// Pushes NavigationScreenA unless another navigation is in progress,
    /// then releases the lock when the pushed screen is popped.
    Future<void> handleNavigateToA() async {
      if (isNavigating.value) return;

      isNavigating.value = true;
      await NavigationScreenARoute().push<void>(context);
      isNavigating.value = false;
    }

    /// Pushes NavigationScreenB unless another navigation is in progress,
    /// then releases the lock when the pushed screen is popped.
    Future<void> handleNavigateToB() async {
      if (isNavigating.value) return;

      isNavigating.value = true;
      await NavigationScreenBRoute().push<void>(context);
      isNavigating.value = false;
    }

    /// Pushes NavigationScreenA without any lock. The enclosing
    /// SingleTouchContainer alone is what blocks a simultaneous second tap.
    Future<void> handleUnguardedNavigateToA() =>
        NavigationScreenARoute().push<void>(context);

    return Column(
      spacing: 8,
      children: [
        const Text('Navigation lock:'),
        GestureDetector(
          onTap: handleNavigateToA,
          child: const Text('Go to Screen A'),
        ),
        GestureDetector(
          onTap: handleNavigateToB,
          child: const Text('Go to Screen B'),
        ),
        const Text('Single touch container:'),
        SingleTouchContainer(
          child: GestureDetector(
            onTap: handleUnguardedNavigateToA,
            child: const Text('Go to Screen A (unguarded)'),
          ),
        ),
      ],
    );
  }
}
