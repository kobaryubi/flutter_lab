import 'dart:async';

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

    /// Animates the page view to the given tab index.
    void animateToTab({required int index}) {
      unawaited(
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        ),
      );
    }

    /// Moves to the first tab page.
    void handleFirstTabTap() => animateToTab(index: 0);

    /// Moves to the second tab page.
    void handleSecondTabTap() => animateToTab(index: 1);

    return Layout(
      appBar: const AppBar(title: Text('Swipe Tabs')),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: .opaque,
                  onTap: handleFirstTabTap,
                  child: const Center(child: Text('Tab 1')),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: .opaque,
                  onTap: handleSecondTabTap,
                  child: const Center(child: Text('Tab 2')),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: const [
                Center(child: Text('Tab 1')),
                Center(child: Text('Tab 2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
