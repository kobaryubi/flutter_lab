import 'package:flutter_test/flutter_test.dart';

/// Base class for page objects, holding the [WidgetTester] that
/// concrete page objects use to locate and interact with widgets.
abstract class PageObject {
  const PageObject({required this.tester});

  /// Drives the widget tree, playing the role of Playwright's `page`.
  final WidgetTester tester;
}
