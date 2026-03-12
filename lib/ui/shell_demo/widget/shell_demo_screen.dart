import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';

/// Shell screen that wraps tab content with bottom navigation.
class ShellDemoScreen extends StatelessWidget {
  const ShellDemoScreen({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    /// Switches to the tapped tab branch.
    void handleTapTab(int index) {
      navigationShell.goBranch(index);
    }

    return Layout(
      appBar: const AppBar(title: Text('Shell Demo')),
      bottomNavigationBar: _BottomNavBar(
        currentIndex: navigationShell.currentIndex,
        onTap: handleTapTab,
      ),
      child: navigationShell,
    );
  }
}

/// Bottom navigation bar with two tabs.
class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      _TabButton(
        label: 'Tab 1',
        isSelected: currentIndex == 0,
        onTap: () => onTap(0),
      ),
      _TabButton(
        label: 'Tab 2',
        isSelected: currentIndex == 1,
        onTap: () => onTap(1),
      ),
    ],
  );
}

/// A single tab button in the bottom navigation bar.
class _TabButton extends StatelessWidget {
  const _TabButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Expanded(
    child: GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    ),
  );
}
