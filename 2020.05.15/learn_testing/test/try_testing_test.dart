import 'package:test/test.dart';

import 'package:try_testing/try_testing.dart';


void main() {

  test('The add function should return the sum of two ints', () {
    var expected = 11;
    expect(add(5, 6), expected);
  });

  test('The subract function should subract the second argument from the first', (){
    expect(subtract(6, 5), 1);
  });

  test('The mult function should multiply input ints', () {
    expect(mult(5, 6), 30);
  });

  test('The divide should do integer division of two ints', (){
    expect(divide(7, 6), 1);
  });
}