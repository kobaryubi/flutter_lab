import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';

class AppBar extends StatelessWidget {
  const AppBar({required this.title, this.onBackTap, super.key});

  final Widget title;

  final VoidCallback? onBackTap;

  @override
  Widget build(BuildContext context) => ColoredBox(
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
            if (onBackTap case final onBackTap?)
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
