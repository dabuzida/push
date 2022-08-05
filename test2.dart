import 'dart:math';

void main() {
  final x = [1, 2, 3, 4, 5];
  final y = x.reversed.toList();
  print(y);
  final func = test;
  final func2 = test2;

  Future.delayed(Duration(seconds: 2), () => func());
}

void test() {
  print(10);
}

int test2() {
  return 101;
}
