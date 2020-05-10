class CollatzConjecture {
  int steps(int input) {

    if (input <= 0) throw ArgumentError('Only positive numbers are allowed');

    var nSteps = 0;
    while(input != 1) {
      if(input % 2 == 0) {
        input = input ~/ 2;
      } else {
        input = input * 3 + 1;
      }
      nSteps++;
    }
    return nSteps;
  }
}
