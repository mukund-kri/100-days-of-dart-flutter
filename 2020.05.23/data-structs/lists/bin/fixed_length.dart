int main() {
  var fixedList = List<int>(5);

  // thorws an error
  fixedList.add(10);

  // Can't resize the list either throws an error
  fixedList.length = 10;
}
