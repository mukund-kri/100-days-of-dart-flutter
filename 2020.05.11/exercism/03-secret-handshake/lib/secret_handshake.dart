import 'dart:math';

class SecretHandshake {

  Map<int, String> int2Command = {
    0: 'wink',
    1: 'double blink',
    2: 'close your eyes',
    3: 'jump',
  };

  List<String> commands(int input) {

    var result = <String>[];
    for(int index=0; index<4; index++) {
      var power = pow(2, index).toInt();
      if((input & power) == power) result.add(int2Command[index]);
    }
    if(input & 16 == 16) result = result.reversed.toList();
   
    return result;
  }
}
