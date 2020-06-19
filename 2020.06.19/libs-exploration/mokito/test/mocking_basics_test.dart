// Explore the basics of mocking
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

import 'package:mocking/cat.dart';

// Create a mock cat
class MockCat extends Mock implements Cat {}

void main() {
  group('Mocking Basics', () {
    test('Call method varify', () {
      // create mock object
      var cat = MockCat();

      // Interact with mock object
      cat.sound();

      // Verify the interaction
      verify(cat.sound());
    });

    test('Now some stubbing', () {
      var cat = MockCat();

      // Unstubbed methods allways return null
      expect(cat.sound(), isNull);

      // Stub a mock method before interacting
      when(cat.sound()).thenReturn('Purr');
      expect(cat.sound(), 'Purr');

      // it's still mocked when you call it again
      expect(cat.sound(), 'Purr');

      // We can stub the same method more than once
      when(cat.sound()).thenReturn('Meow');
      expect(cat.sound(), 'Meow');

      // We can stub getter too
      when(cat.lives).thenReturn(8);
      expect(cat.lives, 8);

      // We can stub methods to throw execptions
      when(cat.lives).thenThrow(RangeError('Ouch!'));
      expect(() => cat.lives, throwsRangeError);

      // We can also calculate reponses at call time
      var responses = ['Purr', 'Meow'];
      when(cat.sound()).thenAnswer((_) => responses.removeAt(0));
      expect(cat.sound(), 'Purr');
      expect(cat.sound(), 'Meow');
      
    });
  });
}
