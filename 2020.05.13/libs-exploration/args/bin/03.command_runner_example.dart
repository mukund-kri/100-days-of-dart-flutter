/*
 * Same functionality as the 02.commands script but in this case using the
 * CommandRunner and Command classes.
 */

import 'dart:io';

import 'package:args/command_runner.dart';

void main(List<String> args) {
  var runner = CommandRunner('challenge',
      'Utils to automate the boring tasks related to coding challenges')
    ..addCommand(CreateCommand())
    ..run(args).catchError((error) {
      if (error is! UsageException) throw error;
      print(error);
      exit(64);
    });
}

class CreateCommand extends Command {
  final name = 'create';
  final description = "Create the directories for today's coding challenge";

  CreateCommand() {
    argParser
      ..addFlag('exercism',
          abbr: 'e', defaultsTo: true, help: 'do not generate exercism folder')
      ..addFlag('lib',
          abbr: 'd',
          defaultsTo: true,
          help: 'do not generate libs-eploration flolder')
      ..addOption('language',
          abbr: 'l', help: 'Choose which language challenge to work on');
  }

  void run() {
    print("Running CreateCommand");
  }
}
