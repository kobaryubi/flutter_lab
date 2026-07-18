import 'package:flutter/widgets.dart';
import 'package:flutter_lab/presentation/core/provider/global_error_widget_notifier.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Debug-only fullscreen error widget for verifying `GlobalErrorOverlay`.
///
/// While visible, the Android back key must do nothing; tapping "close"
/// clears the global error provider and restores normal back handling.
class DebugGlobalError extends ConsumerWidget {
  const DebugGlobalError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Hides this error widget by clearing the global error provider.
    void handleClose() {
      ref.read(globalErrorWidgetProvider.notifier).widget = null;
    }

    return ColoredBox(
      color: AppColors.white1,
      child: Center(
        child: Column(
          mainAxisSize: .min,
          spacing: 16,
          children: [
            const Text('global error'),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: handleClose,
              child: const Text('close'),
            ),
          ],
        ),
      ),
    );
  }
}
