class Anagram {

  bool _isAnagram(String one, String two) {
    if (one == two) return false;
    
    var oneEle = one.codeUnits.toList();
    for(var ele in two.codeUnits) {
      var removeOK = oneEle.remove(ele);
      if (!removeOK) return false;
    }
    return oneEle.isEmpty;
  }

  List<String> findAnagrams(String theStr, List<String> options) {
    return options
      .where((option) => _isAnagram(theStr.toLowerCase(), option.toLowerCase()))
      .toList();
  }
}
