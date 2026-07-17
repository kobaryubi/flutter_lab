import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating how to make [Text] ignore the device text size
/// setting (Settings > Display > Text Size).
///
/// Change the text size in the OS settings while this screen is open and
/// compare the sections: only the "default" section should resize.
class TextScaleScreen extends StatelessWidget {
  const TextScaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // The scaler currently supplied by the OS via MediaQuery. `scale(16)`
    // shows what a 16px font actually renders at under the current setting.
    final textScaler = MediaQuery.textScalerOf(context);

    return Layout(
      appBar: const AppBar(title: Text('TextScale')),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 24,
          children: [
            Text(
              'current scaler: $textScaler\n'
              '16px scales to ${textScaler.scale(16)}px',
            ),
            const _Section(
              title: '1. default',
              description:
                  'No override. Follows the device text size '
                  'setting.',
              child: Text('Scales with device setting'),
            ),
            const _Section(
              title: '2. Text(textScaler: TextScaler.noScaling)',
              description:
                  'Overrides scaling for this single Text widget '
                  'only.',
              child: Text(
                'Always renders at its style size',
                textScaler: TextScaler.noScaling,
              ),
            ),
            _Section(
              title: '3. MediaQuery.withNoTextScaling',
              description:
                  'Overrides MediaQuery for a whole subtree; every '
                  'descendant Text ignores the device setting.',
              child: MediaQuery.withNoTextScaling(
                child: const Column(
                  crossAxisAlignment: .start,
                  spacing: 4,
                  children: [
                    Text('First descendant'),
                    Text('Second descendant'),
                  ],
                ),
              ),
            ),
            _Section(
              title: '4. MediaQuery.withClampedTextScaling',
              description:
                  'Allows scaling but caps it (here max 1.3x), so '
                  'accessibility still works without breaking the layout.',
              child: MediaQuery.withClampedTextScaling(
                maxScaleFactor: 1.3,
                child: const Text('Scales up to 1.3x at most'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A labelled demo section: title, one-line explanation, and the demo
/// widget itself.
class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.description,
    required this.child,
  });

  /// Short label naming the approach being demonstrated.
  final String title;

  /// One-line explanation of the expected behavior.
  final String description;

  /// The demo widget for this approach.
  final Widget child;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    spacing: 8,
    children: [
      Text(title, textScaler: TextScaler.noScaling),
      Text(description, textScaler: TextScaler.noScaling),
      child,
    ],
  );
}
