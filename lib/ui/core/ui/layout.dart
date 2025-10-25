import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/config.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/bottom_navigation_bar.dart';
import 'package:go_router/go_router.dart';

class Layout extends StatelessWidget {
  const Layout({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        child: ColoredBox(
          color: AppColors.white1,
          child: Column(
            children: [
              AppBar(
                title: Text(
                  fitnessTrackerNavTitles[navigationShell.currentIndex],
                ),
              ),
              Expanded(child: navigationShell),
              BottomNavigationBar(
                navigationShell: navigationShell,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
