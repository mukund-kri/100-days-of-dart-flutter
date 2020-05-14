import 'dart:io';

import 'package:args/command_runner.dart';

import './create_command.dart';


void main(List<String> args) {
  CommandRunner('challenges',
      'Utils to automate the boring tasks related to coding challenges')
    ..addCommand(CreateCommand())
    ..run(args).catchError((error) {
      if (error is! UsageException) throw error;
      print(error);
      exit(64);
    });
}
