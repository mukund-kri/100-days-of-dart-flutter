import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;


void main() async {
  
  var exerciseDir = '/home/mukund/snap/exercism/5/exercism/dart/';
  var dir = Directory(exerciseDir);

  var downloaded = dir.listSync(recursive: false, followLinks: false)
    .map((dir) => dir.path.split('/').last);

  var allExercises = json.decode(await File('exercise.list.json').readAsString());
  
  for (var ele in allExercises) {
    if (!downloaded.contains(ele)) {
      var result1 = await Process.run('exercism', ['download', '--exercise=$ele', '--track=dart']);
      print(result1.stdout);
      var eDir = p.join(exerciseDir, ele);
      var result2 = await  Process.run('pub', ['get'], workingDirectory: eDir);
      print(result2.stdout);
    }
  }
}