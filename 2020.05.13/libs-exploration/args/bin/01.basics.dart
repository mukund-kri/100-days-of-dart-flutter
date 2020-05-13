import 'package:args/args.dart';

void main(List<String> args) {
  // create a argument parser. this is central object for the whole game
  var parser = ArgParser();

  // Exploring options
  // add an option that reads in the language, to generate "day of code"
  parser.addOption('language', abbr: 'l');

  parser.addFlag('no-exercism',
    abbr: 'e',
    defaultsTo: false);

  // do the actual parsing of args
  var result = parser.parse(args);

  // print out the results of parsing
  print("Value of Opt Language: ${result['language']}");
  print("Value of Flag No-Exercism: ${result['no-exercism']}");
}
