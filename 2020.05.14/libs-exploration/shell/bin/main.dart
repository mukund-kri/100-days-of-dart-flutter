import 'package:shell/shell.dart';


void main(List<String> arguments) async {

  var shell = Shell();

  
  // example straight from the documentation
  var echo = await shell.start('echo', ['Hello world!']);
  print(await echo.stdout.readAsString());
  await echo.stderr.drain(); 

  // Now try to run the cookie cutter program
  var template = 'gradle4';

  var cc = await shell.start('cookiecutter', ['--no-input', template, 'project=testing']);

  await cc.stdout.readAsString().then((str) => {
    if (str.length > 0) print(str)
  });
  await cc.stderr.readAsString().then((str) => {
    if (str.length > 0) print('Error: $str')
  });
  
  // use grep from dart
  var grep = await shell.start('grep', ['-r', 'simple']);
  
  // check if process exited correctly
  await grep.expectZeroExit();

  // print out the result of grep
  print(await grep.stdout.readAsString());
  
}
