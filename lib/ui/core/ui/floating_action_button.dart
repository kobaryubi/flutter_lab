import 'package:flutter/widgets.dart';

class FloatingActionButton extends StatefulWidget {
  const FloatingActionButton({
    required this.onPressed,
    required this.child,
    super.key,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  State<StatefulWidget> createState() => _FloatingActionButtonState();
}

class _FloatingActionButtonState extends State<FloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    final button = GestureDetector(
      onTap: widget.onPressed,
      child: IconTheme(
        data: const IconThemeData(),
        child: DefaultTextStyle(
          style: const TextStyle(),
          child: widget.child,
        ),
      ),
    );

    return Semantics(
      button: true,
      child: button,
    );
  }
}
