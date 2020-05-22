/*
class Configuration {
  final String rootFolder;
  final String programmingLanguage;
  final workingDir;

  // _ indidcates private variable
  static final Configuration _instance;

  // private constructor
  Configuration._make(this.rootFolder, this.programmingLanguage) {}

  // The default configuration
  factory Configuration({rootFolder, programmingLanguage}) {
    // We cannot have config without the root folder
    if (!this.rootFolder || rootFolder)
    throw ArgumentError('The root folder is must');

    // Can't reset the root
    if (
  }

  // Named constructor
  Configuration.fromMap(Map<String, String> map)
      : rootFolder = map['rootFlder'],
        programmingLanguage = map['progprogrammingLanguage'],
        workingDir = "${map['rootFolder']}/${map['programmingLanguage']}" {
    // rest of the constructor here
  }

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

int main() {
  var conf1 = Configuration('/home');

  var conf2 = Configuration();

  // Check if conf1 and conf2 are the same object
  assert(conf1 == conf2);
}


class Configuration {
  String rootFolder;
  String programmingLanguage;

  // _ indidcates private variable
  static final Configuration _instance = Configuration._make();

  // private constructor
  Configuration._make({this.rootFolder, this.programmingLanguage}) {}

  // The default configuration
  factory Configuration({rootFolder, programmingLanguage = 'Dart'}) {
    _instance.rootFolder = rootFolder;
    _instance.programmingLanguage = programmingLanguage;
    return _instance;
  }

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

int main() {
  var conf1 = Configuration(rootFolder: '/home');
  var conf2 = Configuration();

  // Check if conf1 and conf2 are the same object
  assert(conf1 == conf2);

  print(conf1);
} */

  
class Configuration {

  // The single instance is a static variable
  // _ indidcates private variable
  static final Configuration _instance = Configuration._make();

  // private constructor
  Configuration._make() {}

  // Allways return the only instance of Configuration
  factory Configuration() {
    return _instance;
  }
}

int main() {
  var conf1 = Configuration();
  var conf2 = Configuration();

  // Check if conf1 and conf2 are the same object
  assert(conf1 == conf2);
}
