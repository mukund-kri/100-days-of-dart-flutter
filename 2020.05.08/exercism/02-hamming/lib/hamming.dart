class Hamming {

  int distance(String one, String two) {

    if (one == two) return 0;
    if (one == '' || two == '') throw ArgumentError('no strand must be empty');
    if (one.length != two.length) throw ArgumentError('left and right strands must be of equal length');
    
    var dist = 0;
    var arrOne = one.runes.toList();
    var arrTwo = two.runes.toList();

    for (var index=0; index < arrOne.length; index++) {
      if (arrOne[index] != arrTwo[index]) dist++;
    }
    return dist;
  }
}
