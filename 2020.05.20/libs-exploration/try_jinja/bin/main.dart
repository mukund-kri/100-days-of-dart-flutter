/*
 * This is mostly a copy of the example in the jinja package.
 */
import 'dart:io';

import 'package:jinja/jinja.dart';

void main() {
  final path = Platform.script.resolve('.').toFilePath();
  
  final env = Environment(
    globals: <String, Object>{
      'now': () {
        final dt = DateTime.now().toLocal();
        final hour = dt.hour < 10 ? '0${dt.hour}' : dt.hour.toString();
        final minute = dt.minute < 10 ? '0${dt.minute}' : dt.minute.toString();
        return '$hour:$minute';
      },
    },
    loader: FileSystemLoader(path: path),
    leftStripBlocks: true,
    trimBlocks: true,
  );

  final template = env.getTemplate('users.html');

  stdout.write(template.render(users: [
    {'fullname': 'Jhon Doe', 'email': 'jhondoe@dev.py'},
    {'fullname': 'Jane Doe', 'email': 'janedoe@dev.py'},
  ]));
}
