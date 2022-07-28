import 'dart:math';

void main() {
  print(x());
  print(x2());
  x3();
  x4();
  x5();
  x7();
}

int x() => 11;
int x2() {
  return 12;
}

void x3() => 13;
void x4() {
  print(14);
}

void x5() => x4();
int x6() {
  print(10000);
  return 15;
}

void x7() => x6();
