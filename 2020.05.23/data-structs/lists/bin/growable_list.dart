int main() {
  List<int> lst;

  // A growable list
  lst = List<int>();

  // Also a growable list
  lst = [1, 2, 3];

  // now API that modify the size work
  lst.add(4);
  lst.length = 10;
}
