class ImmutableConfiguration {
  final String rootFolder;
  final String programmingLanguage;

  const ImmutableConfiguration(this.rootFolder, this.programmingLanguage);
}

void main() {
  // You can't do this with non constant constructors
  const config = ImmutableConfiguration('/home', 'dart');

  // Throws an error. config is constant
  config.rootFolder = '/home/skywalker'; 
}
