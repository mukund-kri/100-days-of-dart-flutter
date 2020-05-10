class PascalsTriangle {
  List<List<int>> rows(int input) {

    List<List<int>> result =  List();

    for(int line = 0; line < input; line++) {
      var lineValue = <int>[];

      for (int col = 0; col <= line; col++) {

        if (col == 0 || col == line) lineValue.add(1);
        else lineValue.add( result[line - 1][col - 1] +  result[line - 1][col]);
      }

      result.add(lineValue);
    }

    return result;
  }
}
