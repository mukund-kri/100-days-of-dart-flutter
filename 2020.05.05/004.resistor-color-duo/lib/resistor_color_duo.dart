class ResistorColorDuo {

  // Define the mapping from color to digit
  Map<String, int> colors2num = {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9,
  };

  /// Convert list of color bands in a resistor to numberic
  int value(List<String> input) => colors2num[input[0]] * 10 + colors2num[input[1]];
}