import 'dart:math';

class Darts {

  int score(double x, double y) {

    var dist = sqrt(x * x + y * y);

    if(dist <= 1.0) return 10;
    if(dist <= 5.0) return 5;
    if(dist <= 10.0) return 1;
    return 0;
  }
}
