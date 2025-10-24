import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/config.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          fitnessTrackerNavTitles.length,
          (index) => _Nav(
            label: fitnessTrackerNavTitles[index],
            navigationShell: navigationShell,
            index: index,
          ),
        ),
      ),
    );
  }
}

class _Nav extends HookWidget {
  const _Nav({
    required this.label,
    required this.navigationShell,
    required this.index,
  });

  final String label;
  final StatefulNavigationShell navigationShell;
  final int index;

  @override
  Widget build(BuildContext context) {
    final onTapped = useCallback(() {
      navigationShell.goBranch(index);
    }, []);

    return GestureDetector(
      onTap: onTapped,
      child: Text(label, style: const TextStyle(color: AppColors.onPrimary)),
    );
  }
}
