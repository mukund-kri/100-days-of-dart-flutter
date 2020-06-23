import 'package:http/http.dart' as http;

// shows how to make http requests using top level functions
void simpleRequest() async {
  // Make a post request to example.com. This will return a 404
  var url = 'https://example.com/whatsit/create';
  var response = await http.post(url, body: {'name': 'ink', 'color': 'red'});
  print('Status Code: ${response.statusCode}');
  print('Response body: ${response.body}');

  // A simple get request
  print(await http.read('https://example.com/foobar.txt'));
}

// Same as above but with 'Client' class
void withClientInterface() async {
  var client = http.Client();

  try {
    var response = await client.post('https://example.com/whatsit/create',
        body: {'name': 'ink', 'color': 'red'});
    print(response.body);
  } finally {
    client.close();
  }
}

void main() async {
  // simpleRequest();
  withClientInterface();
}
