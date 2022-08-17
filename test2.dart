import 'dart:math';

void main() {
  print(Five.x);

  Five ff = Five();
  // print(ff.x);
  print(ff.y);
  int aa = ff.a();
  print(aa);
}

class Five {
  static const x = 1;
  final y = 3;
  int a() {
    return 22;
  }
}
