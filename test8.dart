import 'dart:math';

void main() {
  Set a = {1, 2, 3, 4, 5};
  Set b = {2, 3};
  Set c = b.difference(a);
  List d = c.toList();
  d.toSet();

  // print(c);
  // print(d);

  Random().nextDouble() * 0xFFFFFF;
  print(0xFFFFFF);
  print(Random().nextDouble());

  print(Random().nextDouble() * 0xFFFFFF);
}
