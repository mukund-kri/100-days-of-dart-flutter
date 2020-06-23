import 'dart:convert';

import 'package:http/http.dart';

void main() async {
  // pingSolr();
  queryExample();
}

// Play with ping url of solr
void pingSolr() async {
  var pingUrl = 'http://127.0.0.1:8983/solr/gettingstarted/admin/ping';
  var client = Client();

  try {
    // Make the http request
    var response = await client.get(pingUrl);

    // Print out the body and some meta data
    print(response.body);
    print(json.decode(response.body));
    print(response.body.runtimeType);
  } finally {
    client.close();
  }
}

// Query a solr core
void queryExample() async {
  var queryUrl = 'http://127.0.0.1:8983/solr/gettingstarted/query';
  var client = Client();

  try {
    // Make http request to query url
    var response = await client.post(
      queryUrl,
      headers:  {"Content-Type": "application/json"},
      body: '{"query": "*.*"}'
    );
    print(response.body);
  } finally {
    client.close();
  }
}
