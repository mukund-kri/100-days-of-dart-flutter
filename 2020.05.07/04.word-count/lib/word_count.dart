class WordCount {

  Map<String, int> countWords(String text) {

    var acc = Map<String, int>();

    var regex = RegExp(r"[0-9a-zA-Z]+[\']*[0-9a-zA-Z]+|[0-9a-zA-Z]", multiLine: true, caseSensitive: false);
    regex.allMatches(text)
      .map((x) => x.group(0).toLowerCase())
      .forEach(
        (word) => acc.update(word, (count) => count + 1, ifAbsent: () => 1)
      );

    return acc;
  }
}
