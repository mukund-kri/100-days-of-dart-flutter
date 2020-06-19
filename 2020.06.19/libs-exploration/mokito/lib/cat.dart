/*
 * A made up class to show how mocking works.
*/

class Cat {
  // Variable, with getter/setter
  int lives = 9;

  // Method with no parameters or return
  void sleep() {}

  // Method that returns String, no paramters
  String sound() => 'Meow';

  // Methods with positional paramters
  void hunt(String place, String prey) {}

  // Method with collection paramters
  int walk(List<String> places) => 0;
  
  // Named parameters
  bool eatFood(String food, {bool hungry}) => true;

  // Return Future/Stream
  Future<void> chew() async => print('Chewing ...');
}
