import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/routes.dart';
import 'package:flutter_lab/ui/counter/widget/counter_screen.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('CounterScreen increment and decrement', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: Portal(
          child: WidgetsApp.router(
            routerConfig: GoRouter(
              initialLocation: Routes.counter,
              routes: [
                GoRoute(
                  path: Routes.counter,
                  builder: (context, state) => const CounterScreen(),
                ),
              ],
            ),
            color: const Color(0xffffffff),
          ),
        ),
      ),
    );

    // Verify the counter starts at 0.
    expect(find.text('0'), findsOneWidget);

    // Tap increment and verify the counter shows 1.
    await tester.tap(find.byKey(const Key('increment')));
    await tester.pumpAndSettle();

    expect(find.text('1'), findsOneWidget);

    // Tap increment again and verify the counter shows 2.
    await tester.tap(find.byKey(const Key('increment')));
    await tester.pumpAndSettle();

    expect(find.text('2'), findsOneWidget);

    // Tap decrement and verify the counter shows 1.
    await tester.tap(find.byKey(const Key('decrement')));
    await tester.pumpAndSettle();

    expect(find.text('1'), findsOneWidget);

    // Tap decrement twice and verify the counter shows -1.
    await tester.tap(find.byKey(const Key('decrement')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('decrement')));
    await tester.pumpAndSettle();

    expect(find.text('-1'), findsOneWidget);
  });
}
