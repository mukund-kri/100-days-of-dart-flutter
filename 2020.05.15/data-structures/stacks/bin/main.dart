bool isPaired(String input) {

  var openingChars = '[{('.codeUnits;
  var closingChars = ']})'.codeUnits;

  Map<int, int> closer = {
    93: 91,
    125: 123,
    41: 40,
  };

  var stack = List<int>();

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


void main(List<String> arguments) {
  print(isPaired('({})'));
  print(isPaired('({)}'));
}
