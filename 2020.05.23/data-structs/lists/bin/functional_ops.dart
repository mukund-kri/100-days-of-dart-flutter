
void main() {

  var list = [1, 2, 3, 4, 5, 6];

  // Filters out only odd elements and keep the even ones
  list.where((x) => x % 2 == 0);

  // Calculate the sum of elements of a list using fold
  print(
    list.fold(0, (aggregrate, element) => element + aggregrate)
  );

  print(
    list.reduce((aggregrate, element) => element + aggregrate)
  );
}
