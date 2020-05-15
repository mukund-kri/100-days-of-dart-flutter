import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main(List<String> arguments) async {
  print('A few DateFormat examples');

  // Before we start let's initialize the locale to en_IN
  await initializeDateFormatting('en_IN', null);

  // Today's date
  var now = DateTime.now();

  // From the documentation
  print(DateFormat.yMMMd().format(now));

  // A few more skeleton functions
  print(DateFormat.yMd().format(now));
  print(DateFormat('yMd').format(now));

  // Indian Date 
  print(DateFormat.yMMMMd('en_IN').format(now));

  // Or a custom format not in the skeleton functions
  // I used in my 'day of code' generator script
  print(DateFormat('yyyy.MM.dd').format(now));
}
