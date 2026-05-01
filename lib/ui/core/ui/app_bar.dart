import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:go_router/go_router.dart';

class AppBar extends StatelessWidget {
  const AppBar({required this.title, this.onBackTap, super.key});

  final Widget title;

  /// Custom back-tap handler. When `null`, the bar falls back to popping
  /// the current route if the navigator can pop; the back button is hidden
  /// otherwise (e.g. on the home root).
  final VoidCallback? onBackTap;

  @override
  Widget build(BuildContext context) {
    /// Pops the current route — used as the default back-tap behavior.
    void handlePopRoute() {
      context.pop();
    }

    final effectiveOnBackTap =
        onBackTap ?? (context.canPop() ? handlePopRoute : null);

    return ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        bottom: false,
        child: Container(
          height: Dimens.appBarHeight,
          padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
          child: Stack(
            children: [
              Center(
                child: DefaultTextStyle(
                  style: TextStyles.headlineLarge.copyWith(
                    color: AppColors.onPrimary,
                  ),
                  child: title,
                ),
              ),
              if (effectiveOnBackTap case final onBackTap?)
                Align(
                  alignment: Alignment.centerLeft,
                  child: _BackButton(onTap: onBackTap),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    label: 'back',
    child: GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox.square(
        dimension: Dimens.actionSize,
        child: Center(
          child: Assets.icons.arrowBack.svg(
            width: Dimens.iconWidth,
            height: Dimens.iconHeight,
            colorFilter: const ColorFilter.mode(
              AppColors.onPrimary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    ),
  );
}
