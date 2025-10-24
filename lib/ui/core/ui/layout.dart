import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/bottom_navigation_bar.dart';
import 'package:go_router/go_router.dart';

class Layout extends StatelessWidget {
  const Layout({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 24,
            color: AppColors.onPrimaryContainer,
          ),
          Expanded(child: navigationShell),
          const BottomNavigationBar(),
        ],
      ),
    );
  }
}
