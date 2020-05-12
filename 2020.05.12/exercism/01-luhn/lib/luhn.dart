class Luhn {

  /// Each digit comutation
  int _computeDigit(int index, int value) {
    if (index.isOdd) {
      var valueX2 = value * 2;
      return (valueX2 > 9) ? valueX2 - 9 : valueX2;
    }
    else { return value; }
  }

  bool valid(String input) {

    // regex to catch input with non digit chars
    if(RegExp(r'[^\d\s]+').hasMatch(input)) return false;

    // spaces not needed for computation
    input = input.replaceAll(' ', '');
    if(input.length < 2) return false;

    // Calucuate the Luhn sum
    int sum = input.codeUnits
      .reversed
      .map((char) => char - 48)
      .toList()
      .asMap()
      .map((k, val) => MapEntry(k, _computeDigit(k, val)))
      .values
      .fold(0, (int a, int b) => a + b);
    return sum % 10 == 0;
  }
}

