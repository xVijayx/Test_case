import 'package:test/test.dart';
import 'package:test_case/counter.dart';

void main() {
  group('Counter ', () {
    test('Value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('Value should be incremented', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('Value should be decremented by 1', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
