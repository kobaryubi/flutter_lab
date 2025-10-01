import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Button extends ConsumerWidget {
  const Button({
    required this.onPressed,
    required this.label,
    super.key,
  });

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Semantics(
      button: true,
      child: GestureDetector(onTap: onPressed, child: Text(label)),
    );
  }
}
