import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/brightness/hook/use_brightness_controller.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to control and display screen brightness.
class BrightnessScreen extends StatelessWidget {
  const BrightnessScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Brightness')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightnessController = useBrightnessController();

    /// Resets the brightness to the system default.
    void handleReset() {
      brightnessController.resetBrightness();
    }

    /// Sets the brightness to the maximum value.
    void handleMax() {
      brightnessController.maxBrightness();
    }

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 16,
      children: [
        GestureDetector(
          onTap: handleMax,
          child: const Text('Max'),
        ),
        GestureDetector(
          onTap: handleReset,
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
