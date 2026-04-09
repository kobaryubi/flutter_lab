import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// Screen that demonstrates VisibilityDetector usage.
///
/// Shows a list of items and displays their visibility percentage
/// as they scroll in and out of view.
class VisibilityDetectorScreen extends StatelessWidget {
  const VisibilityDetectorScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Visibility Detector')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  static const _itemCount = 20;

  @override
  Widget build(BuildContext context) => ListView.builder(
    itemCount: _itemCount,
    itemBuilder: (context, index) => _VisibilityItem(index: index),
  );
}

/// An item that tracks and displays its own visibility percentage.
class _VisibilityItem extends HookWidget {
  const _VisibilityItem({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final visibleFraction = useState<double>(0);

    /// Handles visibility changes reported by the VisibilityDetector.
    ///
    /// Guards with context.mounted because the callback fires
    /// asynchronously via a timer and may trigger after disposal.
    void handleVisibilityChanged(VisibilityInfo info) {
      if (!context.mounted) {
        return;
      }

      visibleFraction.value = info.visibleFraction;
    }

    final percentage = (visibleFraction.value * 100).toStringAsFixed(0);

    return VisibilityDetector(
      key: Key('visibility-item-$index'),
      onVisibilityChanged: handleVisibilityChanged,
      child: Container(
        height: 120,
        margin: const .symmetric(horizontal: 16, vertical: 8),
        padding: const .all(16),
        decoration: BoxDecoration(
          border: .all(color: AppColors.gray1),
          borderRadius: .circular(8),
        ),
        child: Column(
          crossAxisAlignment: .start,
          mainAxisAlignment: .center,
          spacing: 8,
          children: [
            Text(
              'Item ${index + 1}',
              style: TextStyles.titleMedium,
            ),

            Text(
              'Visible: $percentage%',
              style: TextStyles.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
