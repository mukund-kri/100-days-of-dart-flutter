import 'dart:collection';

class MatchingBrackets {

  bool isPaired(String input) {

    var openingChars = '[{('.codeUnits;
    var closingChars = ']})'.codeUnits;

    Map<int, int> closer = {
      93: 91,
      125: 123,
      41: 40,
    };

    var stack = ListQueue<int>();

    for(var char in input.codeUnits) {
      if(openingChars.contains(char)) stack.add(char);

      if(closingChars.contains(char)) {
        if(stack.isEmpty) return false;
        if(closer[char] == stack.last) {
          stack.removeLast();
        } else {
          return false;
        }
      }
    }

    if(stack.isEmpty) return true;
    else return false;

  }
}
