import 'package:flutter_lab/counter.dart';
import 'package:test/test.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter()..increment();
      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter()..decrement();
      expect(counter.value, -1);
    });
  });
}
