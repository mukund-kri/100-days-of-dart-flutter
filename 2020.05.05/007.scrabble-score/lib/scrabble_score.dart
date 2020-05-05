





Map<String, int> _line2map(String line, int value) {
  Map<String, int> result = Map<String, int>();
  line
    .split(", ")
    .map( (String x) => x.toLowerCase())
    .forEach( (x) => result[x] = value);
  return result;
}

Map<String, int> _initalize() {
  Map<String, int> values = Map();

  values.addAll( _line2map("A, E, I, O, U, L, N, R, S, T", 1) );
  values.addAll( _line2map("D, G", 2) );
  values.addAll( _line2map("B, C, M, P", 3) ); 
  values.addAll( _line2map("F, H, V, W, Y", 4) );
  values["k"] = 5;
  values["j"] = 8;
  values["x"] = 8;
  values["q"] = 10;
  values["z"] = 10;

  return values;
}


int score(String input) {

  int strScore = 0;
  final values = _initalize();

  input.codeUnits.map((unit) {
    return String.fromCharCode(unit);
  })
  .map( (x) => x.toLowerCase())
  .forEach( (x) => strScore += values[x]);

  return strScore;
}
