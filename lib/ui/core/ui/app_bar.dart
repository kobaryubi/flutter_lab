import 'package:flutter/widgets.dart';
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
          child: Center(
            child: DefaultTextStyle(
              style: TextStyles.headlineLarge.copyWith(
                color: AppColors.onPrimary,
              ),
              child: title,
            ),
          ),
        ),
      ),
    );
  }
}
