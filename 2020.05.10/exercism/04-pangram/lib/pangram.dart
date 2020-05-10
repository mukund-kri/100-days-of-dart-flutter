class Pangram {
  bool isPangram(String input) {
    var alphabet = 'abcdefghijklmnopqrstuvwxyz'.codeUnits.toList();
    input.toLowerCase().codeUnits.forEach( (ele) => alphabet.remove(ele));
    return alphabet.isEmpty;
  }
}
