import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that demonstrates a simple counter with increment and decrement.
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Counter')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final count = useState(0);

    /// Increments the counter value by 1.
    void handleIncrement() {
      count.value++;
    }

    /// Decrements the counter value by 1.
    void handleDecrement() {
      count.value--;
    }

    return DefaultTextStyle(
      style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              '${count.value}',
              key: const Key('counter_value'),
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: .center,
              children: [
                GestureDetector(
                  key: const Key('decrement'),
                  onTap: handleDecrement,
                  child: const Text('-'),
                ),

                const SizedBox(width: 32),

                GestureDetector(
                  key: const Key('increment'),
                  onTap: handleIncrement,
                  child: const Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
