import 'dart:math';

class Allergies {

  Map<int, String> scoreMap = {
    1: 'eggs',
    2: 'peanuts',
    4: 'shellfish',
    8: 'strawberries', 
    16: 'tomatoes',
    32: 'chocolate',
    64: 'pollen',
    128: 'cats',
  };

  // Compute the highest power of 2 less than n
  int _highestLessThanN(int n) {
    int number = 2;
    int power = 0;  

    while(number <= n) {
      number *= 2;
      power += 1;
    }
    return power;
  }

  /// Compute if an allergy exists given a score
  bool allergicTo(String allergy, int score) => list(score).contains(allergy);
  
  /// compute the list of allergies given a score
  List<String> list(int score) {

    var result =  <String>[];
    var n = _highestLessThanN(score);   // computer the number to start the loop from

    while(score > 0) {
      // concider the next lower power of 2 for consideration
      int power = pow(2, n).toInt();
      
      // Look up the allergy
      if (scoreMap.containsKey(power) && score >= power) {
        result.add(scoreMap[power]);
      }

      // update for next step
      n--;
      score = score % power;
    }
  
    return result.reversed.toList();
  }
}
