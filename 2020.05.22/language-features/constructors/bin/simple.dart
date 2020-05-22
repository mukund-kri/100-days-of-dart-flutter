class Configuration {
  String rootFolder;
  String programmingLanguage;

  Configuration(String rootFolder, String programmingLanguage) {
    this.rootFolder = rootFolder;
    this.programmingLanguage = programmingLanguage;
  }

  String toString() {
    return 'rootFolder: $rootFolder, programmingLanguage: $programmingLanguage';
  }
}

class Configuration {
  String rootFolder;
  String programmingLanguage;

  Configuration(this.rootFolder, this.programmingLanguage) {}

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
class Configuration {
  String rootFolder;
  String programmingLanguage;
     
  // With named and optional paramters
  Configuration({this.rootFolder, this.programmingLanguage = 'dart'}) {}
}

void main() {
  var config = Configuration(
    rootFolder: '/home/skywalker/100DaysOfDart',
  );

  // or if we are doing scala
  var configS = Configuration(
    rootFolder: '/home/skywalker/100DaysOfScala',
    programmingLanguage: 'Scala',
  );
}
