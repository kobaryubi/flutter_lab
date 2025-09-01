import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/floating_action_button.dart';

class Scaffold extends StatelessWidget {
  const Scaffold({
    required this.appBar,
    required this.body,
    this.floatingActionButton,
    super.key,
  });

  final AppBar appBar;
  final Widget body;
  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    final fab = floatingActionButton;

    return ColoredBox(
      color: AppColors.scaffoldBackgroundColor,
      child: Stack(
        children: [
          Column(
            children: [
              appBar,
              Expanded(child: body),
            ],
          ),
          if (fab != null)
            Positioned(
              bottom: 16,
              right: 16,
              child: fab,
            ),
        ],
      ),
    );
  }
}
