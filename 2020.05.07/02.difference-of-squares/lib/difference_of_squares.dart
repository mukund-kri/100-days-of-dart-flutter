class DifferenceOfSquares {
  int squareOfSum (int n) => n * n * (n + 1) * (n + 1) ~/ 4; 
  int sumOfSquares (int n) => n * (n + 1) * (2*n + 1) ~/ 6;
  int differenceOfSquares(int n) => squareOfSum(n) - sumOfSquares(n);

}
