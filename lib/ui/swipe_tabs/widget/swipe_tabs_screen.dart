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
          _TabIndicator(pageController: pageController),
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

/// Indicator bar that slides in sync with the page view scroll position.
///
/// Listens to the controller inside this widget so the per-frame rebuilds
/// during a swipe stay limited to this small subtree.
class _TabIndicator extends HookWidget {
  const _TabIndicator({required this.pageController});

  /// Controller shared with the page view, the source of the fractional page.
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    // Rebuild on every scroll notification so the bar tracks the swipe
    // position continuously, not only on completed page changes.
    useListenable(pageController);

    final currentPage = pageController.hasClients
        ? pageController.page ?? 0.0
        : 0.0;

    return SizedBox(
      height: 2,
      child: Align(
        // Maps the fractional page (0.0..1.0) to the alignment range
        // (-1.0..1.0) so the bar slides in sync with the swipe.
        alignment: Alignment(currentPage * 2 - 1, 0),
        child: const FractionallySizedBox(
          widthFactor: 0.5,
          // Without a height factor the child ColoredBox receives loose
          // height constraints from Align and collapses to zero height.
          heightFactor: 1,
          child: ColoredBox(color: Color(0xFF000000)),
        ),
      ),
    );
  }
}
