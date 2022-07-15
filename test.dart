import 'dart:math';

void main() async {
  // print(Random().nextInt(10));
  // await Future.delayed(Duration(seconds: 2), () => print(Random().nextInt(10)));
  // print(Random().nextInt(10));

  int x = 12345;
  int y = x ~/ 1000;
  print(x);
  print(y);

  List xx = [];
  if (xx is List) {
    print(1);
  }
  if (true && 'asd' != null && true) {
    // if (true && 'asd' == null) {
    print(328938939);
  }

  bool? k;
  k = true;
  if (k != null && k!) {
    print(49494);
  }
}
