class Isogram {

  bool isIsogram(String input) {
    var stringRunes = Set<int>();

    for(var r in input.toLowerCase().replaceAll('-', '').replaceAll(' ', '').runes) {
      if(stringRunes.contains(r)) {
        return false;
      } else {
        stringRunes.add(r);
      }
    }

    return true;
  }
}
