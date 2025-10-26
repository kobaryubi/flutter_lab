import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:go_router/go_router.dart';

class Layout extends StatelessWidget {
  const Layout({
    required this.navigationShell,
    required this.appBar,
    this.bottomNavigationBar,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  final Widget appBar;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        child: ColoredBox(
          color: AppColors.white1,
          child: Column(
            children: [
              appBar,
              Expanded(child: navigationShell),
              if (bottomNavigationBar != null) bottomNavigationBar!,
            ],
          ),
        ),
      ),
    );
  }
}
