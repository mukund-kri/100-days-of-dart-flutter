class Acronym {

  String abbreviate(String text) {
    return RegExp(r"[a-zA-Z']+")
      .allMatches(text)
      .map((x) => x.group(0).substring(0, 1))
      .join('')
      .toUpperCase();
  }
}
