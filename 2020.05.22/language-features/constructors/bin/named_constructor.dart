class Configuration {
  String rootFolder;
  String programmingLanguage;

  // The default configuration
  Configuration({this.rootFolder, this.programmingLanguage = 'dart'}) {}

  // Named constructor
  Configuration.fromMap(Map<String, String> map) {
    this.rootFolder = map['rootFolder'];
    this.programmingLanguage = map['programmingLanguage'];
  }

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

void main() {
  var config = Configuration.fromMap({
    'rootFolder': '/home/skywalker/100DaysOfCode',
    'programmingLanguage': 'Dart',
  });

  print(config);
}
