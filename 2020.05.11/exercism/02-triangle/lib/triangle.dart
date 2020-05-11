class Triangle {
  bool equilateral(num a, num b, num c) {
    if (_isNotValid(a, b, c)) return false;
    return a == b && b == c && c == a;
  }

  bool isosceles(num a, num b, num c) {
    if (_isNotValid(a, b, c)) return false;
    return a == b || b == c || c == a;
  }

  bool scalene(num a, num b, num c) {
    if (_isNotValid(a, b, c)) return false;
    return !equilateral(a, b, c) && !isosceles(a, b, c);
  }

  bool _isNotValid(num a, num b, num c) => a == 0 || b == 0 || c == 0 || a + b < c || b + c < a || c + a < b;
}