class RnaTranscription {

  Map<int, int> transform =  {
    71: 67,
    67: 71,
    84: 65,
    65: 85,
  };

  String toRna(String dna) {
    return String.fromCharCodes(
      dna.codeUnits.map((u) => transform[u]));
  }
}
