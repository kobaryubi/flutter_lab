import 'package:flutter/widgets.dart';

abstract class ButtonStyleButton extends StatefulWidget {
  const ButtonStyleButton({super.key, required this.child});

  final Widget child;

  @override
  State<ButtonStyleButton> createState() => _ButtonStyleButtonState();
}

class _ButtonStyleButtonState extends State<ButtonStyleButton> {
  @override
  Widget build(BuildContext context) {
    return Semantics(button: true, child: widget.child);
  }
}
