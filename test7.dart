void main() {
  List x = [1, 2, 3, 4, 5];
  List y = [];

  for (int i = x.length - 1; i > -1; i--) {
    y.add(x[i]);
  }
  print(x);
  print(y);
}
