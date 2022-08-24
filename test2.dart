import 'dart:math';

void main() {
  print(Five.x);

  Five ff = Five();
  // print(ff.x);
  print(ff.y);
  int aa = ff.a();
  print('630592f0732c950028b58dd8'.length);
}

class Five {
  static const x = 1;
  final y = 3;
  int a() {
    return 22;
  }
}
