import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/floating_action_button.dart';

class Scaffold extends StatelessWidget {
  const Scaffold({
    required this.body,
    this.appBar,
    this.floatingActionButton,
    super.key,
  });

  final Widget body;
  final AppBar? appBar;
  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    final fab = floatingActionButton;
    final appBar = this.appBar;

    return ColoredBox(
      color: AppColors.scaffoldBackgroundColor,
      child: Stack(
        children: [
          Column(
            children: [
              if (appBar != null) appBar,
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
