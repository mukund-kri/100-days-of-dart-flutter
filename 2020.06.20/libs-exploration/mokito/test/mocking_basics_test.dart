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

    test('argument matchers', () {
      var cat = MockCat();

      // stubbing plain arguments
      when(cat.eatFood('fish')).thenReturn(true);

      // including collections ...
      when(cat.walk(['roof', 'garden'])).thenReturn(2);

      // Using matchers
      when(cat.eatFood(argThat(startsWith('dry')))).thenReturn(false);

      // Mixing plain arguments with matchers
      when(cat.eatFood(argThat(startsWith('dry')), hungry: true))
          .thenReturn(true);

      // Now for the tests
      expect(cat.eatFood('fish'), isTrue);
      expect(cat.walk(['roof', 'garden']), 2);
      expect(cat.eatFood('dry fish'), isFalse);
      expect(cat.eatFood('dry fish', hungry: true), isTrue);

      // we can also varify using argumet selectors
      verify(cat.eatFood('fish'));
      verify(cat.walk(['roof', 'garden']));
      verify(cat.eatFood('dry fish'));
      verify(cat.eatFood('dry fish', hungry: true));

      // we can verify setters too
      cat.lives = 10;
      verify(cat.lives = 10);
    });

    test('verify exact number of invocations', () {
      var cat = MockCat();

      cat.sound();
      cat.sound();

      // Exact number of invocations
      verify(cat.sound()).called(2);

      // .. or with matchers
      // verify(cat.sound()).called(greaterThan(1));

      // or never called
      verifyNever(cat.eatFood(any));
    });
  });
}
