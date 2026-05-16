import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating two nested [GestureDetector]s.
///
/// The inner detector sits inside the outer one. Tapping the inner detector
/// wins the gesture arena, so the outer detector's `onTap` does not fire.
/// Tapping the outer detector's surrounding area fires only the outer one.
class NestedButtonScreen extends StatelessWidget {
  const NestedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Nested Button')),
    child: _Body(),
  );
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final outerTapCount = useState(0);
    final innerTapCount = useState(0);

    /// Increments the outer detector's tap count.
    void handleOuterTap() {
      outerTapCount.value++;
    }

    /// Increments the inner detector's tap count.
    void handleInnerTap() {
      innerTapCount.value++;
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
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: handleOuterTap,
              child: ColoredBox(
                color: AppColors.gray1,
                child: SizedBox(
                  width: 240,
                  height: 240,
                  child: Center(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: handleInnerTap,
                      child: const ColoredBox(
                        color: AppColors.primary,
                        child: SizedBox(width: 120, height: 120),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
