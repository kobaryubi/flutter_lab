import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class Scaffold extends StatelessWidget {
  const Scaffold({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.scaffoldBackgroundColor,
      child: SafeArea(child: child),
    );
  }
}
