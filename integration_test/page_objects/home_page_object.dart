import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'page_object.dart';

/// Page object for the home screen, which lists links to feature screens.
class HomePageObject extends PageObject {
  HomePageObject({required super.tester});

  /// Link that navigates to the E2E counter screen.
  final Finder e2eCounterLink = find.byKey(const Key('home_e2e_counter_link'));

  /// Scrolls to the E2E counter link, taps it, and waits for the
  /// resulting navigation to settle.
  Future<void> openE2eCounter() async {
    await tester.scrollUntilVisible(e2eCounterLink, 100);
    await tester.tap(e2eCounterLink);
    await tester.pumpAndSettle();
  }
}
