import 'dart:math';

class ArmstrongNumbers {
 
  bool isArmstrongNumber(int num) {
    var strRepr = num.toString();

    var len = strRepr.length;

    var sum = 0;
    int numb = num;

    for(var i=1; i<=len; i++) {   
       sum += pow (numb % 10, len);
       numb = numb ~/ 10;
    }
    return sum == num;
  }
}
