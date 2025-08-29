import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class Scaffold extends StatefulWidget {
  const Scaffold({this.drawer, super.key});

  final Widget? drawer;

  @override
  State<Scaffold> createState() => _ScaffoldState();
}

class _ScaffoldState extends State<Scaffold> {
  @override
  Widget build(BuildContext context) {
    return const ScrollNotificationObserver(
      child: ColoredBox(
        color: AppColors.scaffoldBackgroundColor,
      ),
    );
  }
}
