/*
 * Continuing exploration of mocking with mockito.
 */

import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import 'package:mocking/cat.dart';

// Create a mock cat class to test
class MockCat extends Mock implements Cat {}

void main() {
  group('Mocking with mockito: ', () {
    test('Varification in order', () {
      var cat = MockCat();

      cat.eatFood('fish');
      cat.sleep();
      cat.walk(['roof', 'garden']);

      verifyInOrder([
        cat.eatFood('fish'),
        cat.sleep(),
        cat.walk(['roof', 'garden']),
      ]);
    });

    test('Capturing arguments for further assertions', () {
      var cat = MockCat();

      // Simple capture
      cat.eatFood('Fish');
      expect(verify(cat.eatFood(captureAny)).captured.single, 'Fish');

      // Capture multiple calls
      cat.eatFood('Salami');
      cat.eatFood('Milk');
      expect(
        verify(cat.eatFood(captureAny)).captured,
        ['Salami', 'Milk']
      );

      // Capture filtered
      cat.eatFood('Salami');
      cat.eatFood('Milk');
      expect(
        verify(cat.eatFood(captureThat(startsWith('S')))).captured,
        ['Salami']
      );      
    });
  });
}
