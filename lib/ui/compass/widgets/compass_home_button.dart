import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:go_router/go_router.dart';

class CompassHomeButton extends StatelessWidget {
  const CompassHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.actionSize,
      width: Dimens.actionSize,
      child: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.gray1),
              borderRadius: BorderRadius.circular(Dimens.borderRadius),
            ),
            child: Semantics(
              button: true,
              child: GestureDetector(
                onTap: () => context.go(Routes.compass),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimens.borderRadius),
                  child: Center(
                    child: Assets.icons.home.svg(
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
            ),
          ),
        ],
      ),
    );
  }
}
