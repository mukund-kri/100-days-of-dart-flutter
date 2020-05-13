/*
 * Playing with command line options for a utlity that will automate creation
 * of the directories for a day's code as part of the 100 days of code 
 * chellenge.
 */
import 'package:args/args.dart';

void main(List<String> args) {
  // Create the main parser
  var mainParser = ArgParser();

  // Create the sub-parsser
  var createParser = mainParser.addCommand('create');

  // Add options/flags to main parser
  mainParser
    ..addOption('language',
        abbr: 'l', help: 'Choose which language challenge to work on')
    ..addFlag('help', abbr: 'h', defaultsTo: false);

  // add options/flass to sub parser
  createParser
    ..addFlag('exercism',
        abbr: 'e', defaultsTo: true, help: 'do not generate exercism folder')
    ..addFlag('lib',
        abbr: 'l',
        defaultsTo: true,
        help: 'do not generate libs-eploration flolder')
    ..addFlag('help', abbr: 'h', defaultsTo: false);

  // test out the parser
  var results = mainParser.parse(args);

  if (results['help']) {
    print(mainParser.usage);
    return;
  }

  if (results.command['help']) {
    print(createParser.usage);
    return;
  }

  // Print out the results
  // Opts of the main parser
  print("Value of Language: ${results['language']}");

  // details of the sub-parser
  print("Name of the command: ${results.command.name}");
  print("no-lib flag on create command is: ${results.command['lib']}");
}
