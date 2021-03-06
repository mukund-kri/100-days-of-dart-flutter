// import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:shell/shell.dart';

/// Command to create a starter project using cookiecutter
class StarterCommand extends Command {

  final name = 'starter';
  final description = 'Create a starter project using cookiecutter';

  StarterCommand() {
    argParser
      ..addOption('name',
        abbr: 'n',
        help: 'Name of the project',
        defaultsTo: 'proj',
      )
      ..addOption('language',
        abbr: 'l',
        help: 'Choose which language challenge to work on'
      )
      ..addOption('template',
        abbr: 't',
        help: 'Which template to use',
        defaultsTo: 'basic'
      );
  }

  void run() async {

    var template = "${argResults['language']}/${argResults['template']}";

    Map<String,String> ccOptionMap = {
      'project': argResults['name'],
    };

    var ccOptions = ccOptionMap
      .entries
      .map((item) => '${item.key}=${item.value}')
      .join('');

    var shell = Shell();
    var cc = await shell.start('cookiecutter', 
      ['--no-input', template, ccOptions]);

    await cc.stdout.readAsString().then((str) => {
      if (str.length > 0) print(str)
    });
    await cc.stderr.readAsString().then((str) => {
      if (str.length > 0) print('Error: $str')
    });

   }
}