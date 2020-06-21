/*
 * Explore fake classes with mokito
 */
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import 'package:mocking/cat.dart';

// Create a fake class
class FakeCat extends Fake implements Cat {
  @override
  bool eatFood(String food, {bool hungry}) {
    print('Fake eat $food');
    return true;
  }
}

void main() {
  test('Fake classes', () {
    var fakeCat = FakeCat();

    // The overrided methods work as expected
    fakeCat.eatFood('Salami');

    // all other methods throw UnimplementedError
    expect(() => fakeCat.sound(), throwsUnimplementedError);
  });
}
