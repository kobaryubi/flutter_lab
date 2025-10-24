import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 56,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _Nav(label: 'Workouts'),
          _Nav(label: 'Chat'),
          _Nav(label: 'Profile'),
        ],
      ),
    );
  }
}

class _Nav extends HookWidget {
  const _Nav({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final onTapped = useCallback(() {}, []);

    return GestureDetector(
      onTap: onTapped,
      child: Text(label, style: const TextStyle(color: AppColors.onPrimary)),
    );
  }
}
