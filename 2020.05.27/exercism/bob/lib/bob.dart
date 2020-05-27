class Bob {
  bool fullUpper(String str) => str.toUpperCase() == str;

  String response(String input) {
    if (!RegExp(r'[a-zA-Z\s?]+').hasMatch(input)) return 'Whatever.';
    if (!RegExp(r'[a-z]+').hasMatch(input) &&
        RegExp(r'^.*\?\s*$').hasMatch(input))
      return 'Calm down, I know what I\'m doing!';
    if (RegExp(r'^\s*$').hasMatch(input)) return 'Fine. Be that way!';
    if (RegExp(r'^.*\?\s*$').hasMatch(input)) return 'Sure.';
    if (!RegExp(r'[a-z]+').hasMatch(input)) return 'Whoa, chill out!';
    return 'Whatever.';
  }
}
