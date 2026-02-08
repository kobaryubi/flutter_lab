import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:go_router/go_router.dart';

/// Shell scaffold for the branch lifecycle demo.
class ShellDemoScaffold extends StatelessWidget {
  const ShellDemoScaffold({
    required this.navigationShell,
    super.key,
  });

  /// The navigation shell provided by `StatefulShellRoute`.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Layout(
    appBar: const AppBar(title: Text('Shell Demo')),
    bottomNavigationBar: _buildBottomNavigationBar(),
    child: navigationShell,
  );

  /// Builds the bottom navigation bar for tab switching.
  Widget _buildBottomNavigationBar() => Row(
    children: [
      _TabButton(
        label: 'Tab A',
        isSelected: navigationShell.currentIndex == 0,
        onTap: () => _handleTap(0),
      ),
      _TabButton(
        label: 'Tab B',
        isSelected: navigationShell.currentIndex == 1,
        onTap: () => _handleTap(1),
      ),
      _TabButton(
        label: 'Tab C',
        isSelected: navigationShell.currentIndex == 2,
        onTap: () => _handleTap(2),
      ),
    ],
  );

  /// Handles tab selection by navigating to the corresponding branch.
  void _handleTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

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
      child: Text(
        label,
        textAlign: .center,
        style: TextStyle(
          fontWeight: isSelected ? .bold : .normal,
        ),
      ),
    ),
  );
}
