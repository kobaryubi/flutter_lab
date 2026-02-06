import 'package:flutter/widgets.dart';

abstract class ButtonStyleButton extends StatefulWidget {
  const ButtonStyleButton({
    required this.onPressed,
    required this.child,
    super.key,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  State<ButtonStyleButton> createState() => _ButtonStyleButtonState();
}

class _ButtonStyleButtonState extends State<ButtonStyleButton> {
  @override
  Widget build(BuildContext context) => Semantics(
    button: true,
    child: GestureDetector(onTap: widget.onPressed, child: widget.child),
  );
}
