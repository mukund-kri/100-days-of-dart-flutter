class Configuration {
  String rootFolder;
  String programmingLanguage;
  String workingDir;

  // The default configuration
  Configuration({this.rootFolder, this.programmingLanguage = 'dart'}) {}

  // Named constructor
  Configuration.fromMap(Map<String, String> map) {
    this.rootFolder = map['rootFolder'];
    this.programmingLanguage = map['programmingLanguage'];
  }

  Configuration.fromMap2(Map<String, String> map)
      : rootFolder = map['rootFlder'],
        programmingLanguage = map['progprogrammingLanguage'],
        workingDir = "${map['rootFolder']}/${map['programmingLanguage']}" {
    // rest of the constructor here
  }

  // Redirect to the default constructor
  Configuration.defaultConfig()
      : this(rootFolder: '/home/skywalker/100DaysOfCode');

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

  print(Configuration.defaultConfig());
}
