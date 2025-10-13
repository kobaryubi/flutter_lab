import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class Fab extends StatelessWidget {
  const Fab({required this.label, required this.onPressed, super.key});

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
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryContainer,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.icons.addLocationOutlined.svg(
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(
                  AppColors.onPrimaryContainer,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(color: AppColors.onPrimaryContainer),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
