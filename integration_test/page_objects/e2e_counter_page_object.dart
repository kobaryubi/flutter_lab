import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'page_object.dart';

/// Page object for the E2E counter screen.
class E2eCounterPageObject extends PageObject {
  E2eCounterPageObject({required super.tester});

  /// Text showing the current count value.
  final Finder countText = find.byKey(const Key('e2e_counter_count_text'));

  /// Button that increments the count by one.
  final Finder incrementButton = find.byKey(
    const Key('e2e_counter_increment_button'),
  );
}
