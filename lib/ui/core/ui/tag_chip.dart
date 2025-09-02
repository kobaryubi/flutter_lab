import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class TagChip extends StatelessWidget {
  const TagChip({required this.tag, super.key});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: ColoredBox(
        color: AppColors.primary,
        child: SizedBox(
          height: 32,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.addLocationOutlined.svg(
                  width: 16,
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                    AppColors.onPrimary,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  tag,
                  style: GoogleFonts.openSans(
                    textStyle: TextStyles.bodySmall.copyWith(
                      color: AppColors.onPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
