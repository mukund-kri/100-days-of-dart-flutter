import 'package:test/test.dart';
import 'package:unit_testing_intro/counter.dart';

// Simplest possible test
// Note: entry point into tests is also through 'main'
void main() {
  test('Count value should be incremented', () {
    final counter = Counter();
    counter.increment();

    expect(counter.value, 1);
  });
}
