import 'dart:io';

import 'package:yaml/yaml.dart';


void main(List<String> arguments) {

  var config = loadYaml(
    File('test.yaml').readAsStringSync());
  
  // Check simple key value pairs
  print(config['one']);

  // Check yaml array elements
  print(config['two']);

  // Check multi level elemntes
  print(config['three']['embeded']['key']);
}
