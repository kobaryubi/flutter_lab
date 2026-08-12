import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen with two tab pages that can be switched by horizontal swipe.
class SwipeTabsScreen extends HookWidget {
  const SwipeTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return Layout(
      appBar: const AppBar(title: Text('Swipe Tabs')),
      child: PageView(
        controller: pageController,
        children: const [
          Center(child: Text('Tab 1')),
          Center(child: Text('Tab 2')),
        ],
      ),
    );
  }
}
