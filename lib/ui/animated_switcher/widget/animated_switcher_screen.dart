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

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
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
