class Configuration {
  String rootFolder;
  String programmingLanguage;

  Configuration(String rf, String pl) {
    this.rootFolder = rf;
    this.programmingLanguage = pl;
  }

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

class Configuration2 {
  String rootFolder;
  String programmingLanguage;

  Configuration2(this.rootFolder, this.programmingLanguage) {}

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

class Configuration3 {
  String rootFolder;
  String programmingLanguage;

  Configuration3({this.rootFolder, this.programmingLanguage = 'dart'}) {}

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

class ConfigurationN {
  String rootFolder;
  String programmingLanguage;

  // The default configuration
  ConfigurationN({this.rootFolder, this.programmingLanguage = 'dart'}) {}

  // Named constructor
  ConfigurationN.fromMap(Map<String, String> map) {
    this.rootFolder = map['rootFolder'];
    this.programmingLanguage = map['programmingLanguage'];
  }

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

void main() {
  // create an configuration object
  var config = Configuration(
    '/home/skywalker/100DaysOfDart',
    'Dart',
  );

  var config3 = Configuration3(
    rootFolder: '/home/skywalker/100DaysOfDart',
  );
  print(config3);

  // or if we'r doing scala
  var config3s = Configuration3(
    rootFolder: '/home/skywalker/100DaysOfScala',
    programmingLanguage: 'Scala',
  );
  print(config3s);

  // use config for programming ....
}
