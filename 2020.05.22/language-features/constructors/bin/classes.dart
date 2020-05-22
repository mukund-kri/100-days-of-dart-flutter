class Configuration {
  String rootFolder;
  String programmingLanguage;
}

void main() {
  // create an configuration object
  var config = Configuration();

  // and set the values
  config.rootFolder = '/home/skywalker/100DaysOfDart';
  config.programmingLanguage = 'Dart';

  // Alternativlly we can use the cascade (..) operator 
  config
    ..rootFolder = '/home/skywalker/100DaysOfDart'
    ..programmingLanguage = 'Dart';

  // use config for programming ....
}
