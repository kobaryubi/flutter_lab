import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class CompassFab extends StatelessWidget {
  const CompassFab({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final String icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: CompassAppColors.primaryContainer,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture(
                AssetBytesLoader(icon),
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  CompassAppColors.onPrimaryContainer,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                label,
                style: TextStyle(color: CompassAppColors.onPrimaryContainer),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
