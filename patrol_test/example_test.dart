import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'verify Patrol setup by going to home screen',
    ($) async {
      await $.pumpWidgetAndSettle(
        WidgetsApp(
          color: const Color(0xffffffff),
          builder: (context, child) => const Center(
            child: Text(
              'app',
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      );

      expect($('app'), findsOneWidget);

      await $.platform.mobile.pressHome();
    },
  );
}
