import 'package:flutter_lab/flavors.dart';
import 'package:flutter_lab/flutter_lab_app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('user opens the e2e counter screen and increments', (
    tester,
  ) async {
    F.appFlavor = .local;

    await tester.pumpWidget(const ProviderScope(child: FlutterLabApp()));
    await tester.pumpAndSettle();
  });
}
