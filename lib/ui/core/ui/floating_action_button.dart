import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';

class FloatingActionButton extends StatefulWidget {
  const FloatingActionButton({
    required this.label,
    required this.icon,
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;
  final Text label;
  final SvgGenImage icon;

  @override
  State<StatefulWidget> createState() => _FloatingActionButtonState();
}

class _FloatingActionButtonState extends State<FloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    final button = GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primaryContainer,
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadow,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: IconTheme(
          data: const IconThemeData(),
          child: DefaultTextStyle(
            style: TextStyles.bodySmall.copyWith(
              color: AppColors.onPrimaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.all(Dimens.padding),
              child: Row(
                children: [
                  widget.icon.svg(
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      AppColors.onPrimaryContainer,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: Dimens.padding),
                  widget.label,
                ],
              ),
            ),
          ),
        ),
      ),
    );

    return Semantics(
      button: true,
      child: button,
    );
  }
}
