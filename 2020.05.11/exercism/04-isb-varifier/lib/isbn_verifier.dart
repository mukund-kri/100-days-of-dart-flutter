

bool isValid(String isbn) {
  // Check if the format is correct
  if (!RegExp(r'^(\d-\d{3}-\d{5}-[\dX]|\d{9}[\dX])$').hasMatch(isbn)) return false;

  // convert all char to ints
  var nums = isbn.replaceAll('-', '').codeUnits.map((x) => x - 48).toList().reversed.toList();

  // if the last char is X than convert to 10
  if(nums.first == 40) nums.first = 10;

  // compute the checksum
  var sum = 0;
  for(var mult=0; mult <10; mult++) {
    sum += (mult + 1) * nums[mult];
  }  
  return sum % 11 == 0;
}
