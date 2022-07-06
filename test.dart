import 'dart:math';

void main() async {
  // print(Random().nextInt(10));
  // await Future.delayed(Duration(seconds: 2), () => print(Random().nextInt(10)));
  // print(Random().nextInt(10));

  int v = 12;
  for (int i = 0; i < 5; i++, v++) {
    print(i);
    print(v);
  }
}
