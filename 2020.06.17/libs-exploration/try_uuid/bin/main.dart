/*
 * Explore the UUID package.
 * uuid is a simple package the generates RFC4122 compliant UUIDs
 */
import 'package:uuid/uuid.dart';

void main(List<String> arguments) {
  // initialize a generator
  var generator = Uuid();

  // Generate a v1 (time based) uuid
  print(generator.v1());

  // Generate a v4 (random) uuid
  print(generator.v4());

  // Generate a v5 (namespace based) uuid
  print(generator.v5(Uuid.NAMESPACE_URL, 'www.example.com'));
  
}
