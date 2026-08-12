import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Titles of the tab pages, shared by the label row, the indicator sizing,
/// and the page view contents.
const _tabTitles = ['Tab 1', 'Tab 2'];

/// Screen with tab pages that can be switched by horizontal swipe.
class SwipeTabsScreen extends HookWidget {
  const SwipeTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return Layout(
      appBar: const AppBar(title: Text('Swipe Tabs')),
      child: Column(
        children: [
          Row(
            children: [
              for (final (index, title) in _tabTitles.indexed)
                Expanded(
                  child: _TabLabel(
                    title: title,
                    index: index,
                    pageController: pageController,
                  ),
                ),
            ],
          ),
          _TabIndicator(pageController: pageController),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                for (final title in _tabTitles) Center(child: Text(title)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Tappable tab label that animates the page view to its own page.
class _TabLabel extends StatelessWidget {
  const _TabLabel({
    required this.title,
    required this.index,
    required this.pageController,
  });

  /// Label text shown for this tab.
  final String title;

  /// Page index this tab navigates to when tapped.
  final int index;

  /// Controller shared with the page view.
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    /// Animates the page view to this tab's page.
    void handleTap() {
      unawaited(
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        ),
      );
    }

    return GestureDetector(
      behavior: .opaque,
      onTap: handleTap,
      child: Center(child: Text(title)),
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
        // Maps the fractional page (0..last index) to the alignment range
        // (-1.0..1.0) so the bar slides in sync with the swipe.
        alignment: Alignment(currentPage * 2 / (_tabTitles.length - 1) - 1, 0),
        child: FractionallySizedBox(
          widthFactor: 1 / _tabTitles.length,
          // Without a height factor the child ColoredBox receives loose
          // height constraints from Align and collapses to zero height.
          heightFactor: 1,
          child: const ColoredBox(color: Color(0xFF000000)),
        ),
      ),
    );
  }
}
