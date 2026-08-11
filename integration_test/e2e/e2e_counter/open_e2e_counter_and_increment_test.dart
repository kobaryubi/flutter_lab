import 'package:flutter/widgets.dart';
import 'package:flutter_lab/flavors.dart';
import 'package:flutter_lab/flutter_lab_app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';

import '../../page_objects/e2e_counter_page_object.dart';
import '../../page_objects/home_page_object.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('user opens the e2e counter screen and increments', (
    tester,
  ) async {
    F.appFlavor = .local;

    await tester.pumpWidget(const ProviderScope(child: FlutterLabApp()));
    await tester.pumpAndSettle();

    final homePageObject = HomePageObject(tester: tester);
    await homePageObject.openE2eCounter();

    final e2eCounterPageObject = E2eCounterPageObject(tester: tester);
    expect(e2eCounterPageObject.countText, findsOne);

    await e2eCounterPageObject.increment();

    final countText = tester.widget<Text>(e2eCounterPageObject.countText);
    expect(countText.data, '1');
  });
}
