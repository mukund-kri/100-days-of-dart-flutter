class BeerSong {

  String _numBottles(int bottles) {
    switch(bottles) {
      case 0: return 'no more bottles';
      case 1: return '1 bottle';
      default: return '$bottles bottles';
    }
  }

  String _takeIt (int numb) => (numb == 1) ? 'it' : 'one';

  List<String> recite(int number, int steps) {
     
    var lines = <String>[];


    for(var step=0; step<steps; step++) {
      switch(number) {
        case 0: {
          lines
            ..add('No more bottles of beer on the wall, no more bottles of beer.')
            ..add('Go to the store and buy some more, 99 bottles of beer on the wall.');
        }
        break;
        default: {
          lines
            ..add('${_numBottles(number)} of beer on the wall, ${_numBottles(number)} of beer.')
            ..add('Take ${_takeIt(number)} down and pass it around, ${_numBottles(number - 1)} of beer on the wall.');
        }
      }
      if (!(step == (steps - 1))) lines.add('');
      number--;
    }

    return lines;
  }
}
