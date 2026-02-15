import 'dart:async';

import 'package:fake_async/fake_async.dart';
import 'package:flutter_lab/data/gateway/clock/clock_clock_gateway.dart';
import 'package:test/test.dart';

void main() {
  group('ClockClockGateway', () {
    late ClockClockGateway gateway;

    setUp(() {
      gateway = ClockClockGateway();
    });

    test('returns the initial fake time', () {
      final initialTime = DateTime(2025);

      fakeAsync((async) {
        final result = gateway.now();
        expect(result, initialTime);
      }, initialTime: initialTime);
    });

    test('returns advanced time after elapse', () {
      fakeAsync((async) {
        final initialTime = gateway.now();

        async.elapse(const Duration(minutes: 5));

        final laterTime = gateway.now();
        expect(
          laterTime.difference(initialTime),
          const Duration(minutes: 5),
        );
      });
    });

    test('returns different times after multiple elapses', () {
      fakeAsync((async) {
        final time1 = gateway.now();

        async.elapse(const Duration(seconds: 30));
        final time2 = gateway.now();

        async.elapse(const Duration(seconds: 30));
        final time3 = gateway.now();

        expect(
          time2.difference(time1),
          const Duration(seconds: 30),
        );
        expect(
          time3.difference(time1),
          const Duration(minutes: 1),
        );
      });
    });

    test('periodic timer fires correctly with fake time', () {
      fakeAsync((async) {
        final collectedTimes = <DateTime>[];

        Timer.periodic(const Duration(seconds: 1), (_) {
          collectedTimes.add(gateway.now());
        });

        async.elapse(const Duration(seconds: 3));

        expect(collectedTimes, hasLength(3));

        final firstToSecond = collectedTimes[1].difference(collectedTimes[0]);
        final secondToThird = collectedTimes[2].difference(collectedTimes[1]);

        expect(firstToSecond, const Duration(seconds: 1));
        expect(secondToThird, const Duration(seconds: 1));
      });
    });
  });
}
