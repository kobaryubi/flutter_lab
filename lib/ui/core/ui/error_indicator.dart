import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({
    super.key,
    required this.title,
    required this.label,
    required this.onPressed,
  });

  final String title;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IntrinsicWidth(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: CompassAppColors.onError),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Semantics(
          button: true,
          label: label,
          child: GestureDetector(onTap: onPressed, child: Text(label)),
        ),
      ],
    );
  }
}
