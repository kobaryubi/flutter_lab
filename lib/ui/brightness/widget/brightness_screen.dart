import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/brightness/view_model/brightness_view_model.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen to control and display screen brightness.
class BrightnessScreen extends StatelessWidget {
  const BrightnessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Layout(
      appBar: AppBar(title: Text('Brightness')),
      child: _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(brightnessViewModelProvider);
    final viewModel = ref.read(brightnessViewModelProvider.notifier);

    useEffect(
      () {
        viewModel.fetchBrightness();
        return null;
      },
      [],
    );

    /// Increases the brightness by 0.1, clamped to 1.0.
    void handleIncrease() {
      if (uiState.brightness case AsyncData(:final value)) {
        viewModel.setBrightness(brightness: (value + 0.1).clamp(0.0, 1.0));
      }
    }

    /// Decreases the brightness by 0.1, clamped to 0.0.
    void handleDecrease() {
      if (uiState.brightness case AsyncData(:final value)) {
        viewModel.setBrightness(brightness: (value - 0.1).clamp(0.0, 1.0));
      }
    }

    /// Resets the brightness to the system default.
    void handleReset() {
      viewModel.resetBrightness();
    }

    /// Fetches the current brightness from the system.
    void handleFetch() {
      viewModel.fetchBrightness();
    }

    return Column(
      crossAxisAlignment: .stretch,
      spacing: 16,
      children: [
        if (uiState.brightness case AsyncData(:final value))
          Text('Brightness: ${(value * 100).round()}%'),
        Row(
          spacing: 16,
          children: [
            GestureDetector(
              onTap: handleDecrease,
              child: const Text(' - '),
            ),
            GestureDetector(
              onTap: handleIncrease,
              child: const Text(' + '),
            ),
          ],
        ),
        GestureDetector(
          onTap: handleReset,
          child: const Text('Reset'),
        ),
        GestureDetector(
          onTap: handleFetch,
          child: const Text('Fetch'),
        ),
      ],
    );
  }
}
