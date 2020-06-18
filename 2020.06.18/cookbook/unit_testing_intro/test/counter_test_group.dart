import 'package:test/test.dart';
import 'package:unit_testing_intro/counter.dart';

// Combine multiple tests into a group
void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('call on increment() should increase value by 1', () {
      var counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });

    test('call on decrement() should decease the value by 1', () {
      var counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
