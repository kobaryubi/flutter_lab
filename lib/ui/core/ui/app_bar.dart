import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';

class AppBar extends StatelessWidget {
  const AppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: Dimens.appBarHeight,
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
              const Align(
                alignment: Alignment.centerLeft,
                child: _BackButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'back',
      child: GestureDetector(
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
}
