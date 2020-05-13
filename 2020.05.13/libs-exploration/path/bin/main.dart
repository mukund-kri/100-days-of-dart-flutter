/*
 * Explore a few important functions in the path lib
 */

import 'dart:io';
import 'package:path/path.dart' as p;

void main() {
  // get the current directory
  var cwd = p.current;
  print('Current working directory is: $cwd');

  // Create an absolute path for file in the current directory
  var absPath = p.absolute('README.md');
  print('Absolute path of README.md is: $absPath');

  // we can then go on to create that file
  File(absPath).createSync();

  // another one I use a lot in the python equivalent
  var datFile = p.join('/home/mukund/', 'temp', 'logs.dat');
  print('Path for dat file: $datFile');

  // Now to split the path into individual components and get the last
  // element
  var currentDirName = p.split(cwd).last;
  print('Name of current dir: $currentDirName');
}
