/*
 * Using setUp and tearDown functions to manage common objects
 */

// start
import 'package:test/test.dart';
import 'package:unit_testing_intro/counter.dart';

void main() {
  group('Counter', () {
    Counter counter;
    setUp(() {
      counter = Counter();
    });

    test('Initial value = 0', () {
      expect(counter.value, 0);
    });

    test('increment() ups value by 1', () {
      counter.increment();
      expect(counter.value, 1);
    });

    test('decrement() reduces value by 1', () {
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
