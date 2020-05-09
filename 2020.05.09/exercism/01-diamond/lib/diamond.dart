class Diamond {
  
  List<String> rows(String endChar) {

    int endCharInt = endChar.codeUnitAt(0);
    int startCharInt = 'A'.codeUnitAt(0);

    int len = endCharInt - startCharInt;

    var ends = len;
    var middle = -1;
    var currentChar = startCharInt;

    var ans = <String>[];

    // Top half
    for(int index=0; index < 2 * len + 1;  index++) {
      
      var result = ' ' * ends;
      result += String.fromCharCode(currentChar);
      if(middle > 0) {
        result += ' ' * middle;
        result += String.fromCharCode(currentChar);
      }
      result += ' ' * ends;
      ans.add(result);  

      if(index < len) {
        ends--;
        middle += 2;
        currentChar++;
      } else {
        ends++;
        middle -= 2;
        currentChar--;
      }
    }

    return ans;
  }

}
