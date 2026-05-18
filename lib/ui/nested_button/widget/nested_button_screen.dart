import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/application/di/provider.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:flutter_lab/ui/nested_button/widget/tappable_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Screen demonstrating a nested-button press-color issue.
///
/// Two [TappableButton]s are nested. Long-pressing the inner button also turns
/// the outer button to its pressed color, because `onTapDown` fires for the
/// outer detector before the gesture arena resolves.
class NestedButtonScreen extends StatelessWidget {
  const NestedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Nested Button')),
    child: _Body(),
  );
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final outerTapCount = useState(0);
    final innerTapCount = useState(0);
    final logger = ref.read(loggerGatewayProvider);

    /// Increments the outer button's tap count and logs it at info level.
    void handleOuterTap() {
      outerTapCount.value++;
      logger.info('Outer button tapped: ${outerTapCount.value}');
    }

    /// Increments the inner button's tap count and logs it at warning level.
    void handleInnerTap() {
      innerTapCount.value++;
      logger.warning('Inner button tapped: ${innerTapCount.value}');
    }

    return DefaultTextStyle(
      style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
      child: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            Text('Outer tapped: ${outerTapCount.value}'),
            Text('Inner tapped: ${innerTapCount.value}'),
            TappableButton(
              onTap: handleOuterTap,
              color: AppColors.gray1,
              pressedColor: AppColors.gray3,
              width: 240,
              height: 240,
              child: TappableButton(
                onTap: handleInnerTap,
                color: AppColors.primary,
                pressedColor: AppColors.primaryContainer,
                width: 120,
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
