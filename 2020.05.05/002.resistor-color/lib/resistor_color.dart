class ResistorColor {

  List<String> get colors {
    return [
      "black",
      "brown",
      "red",
      "orange",
      "yellow",
      "green",
      "blue",
      "violet",
      "grey",
      "white",
    ];
  }

  /// Convert color string in a resistor to numberic
  int colorCode(String color) {
    
    return colors.indexOf(color);
  }
}