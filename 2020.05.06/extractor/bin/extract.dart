import 'dart:convert';
import 'dart:io';

import 'package:html/parser.dart';


void main() async {
  final body = await File('dart.track.html').readAsString();

  var document = parse(body);
  var exerciseDivs = document
    .getElementsByClassName('widget-side-exercise');

  var exercises = exerciseDivs
    .map( (div) => div.children[0].id.substring(9))
    .toList();


  // var eMap = { for (var exercise in exercises) exercise : 'download' };
  var jsonEncoder = JsonEncoder.withIndent('  ');
  print(jsonEncoder.convert(exercises));

}
