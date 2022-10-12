import 'dart:math';

void main() {
  // num a = 11;
  // num b = 11.343;
  // print(a / 11);
  // print(b / 3);

  // int w = 16420;
  // print(w ~/ 3600);
  // print(w % 3600);

  for (int i = 0; i < 3000; i++) {
    double num = Random().nextDouble();
    // print(Random().nextInt(2));
    String s = '010';
    if (num > 0.09) {
      // print(num);
      int n = (num * 100000000).ceil();
      // print((num * 100000000).ceil());
      s += n.toString();
      print(s);
      // print((num * 100000000000).ceil());
    }
  }
}
