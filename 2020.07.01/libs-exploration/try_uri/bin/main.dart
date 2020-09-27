import 'dart:core';

void main() {
  exampleOne();
  exampleQueryParameters();
}

void exampleOne() {
  var uri =
      Uri(scheme: 'http', host: '127.0.0.1', pathSegments: ['one', 'two']);

  print(uri);
}

void exampleQueryParameters() {
  var queryParams = {'commit': 'true', 'count': '1', 'text': 'a b *c &d', 'commitWithin': null};
  var uri = Uri.http('127.0.0.1', '/a/b', queryParams);

  print(uri);
}
