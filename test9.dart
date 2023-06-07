import 'dart:math';

void main() {
  print(DateTime.fromMillisecondsSinceEpoch(1685580912042).toString());
  print(DateTime.fromMillisecondsSinceEpoch(1685580928277).toString());
  print(DateTime.fromMillisecondsSinceEpoch(1685580949432).toString());

  print(DateTime.fromMillisecondsSinceEpoch(1685670278797).toString());
  print(DateTime.fromMillisecondsSinceEpoch(1685668384128).toString());
  print(DateTime.fromMillisecondsSinceEpoch(1685581713053).toString());

  print(108 % 13);

  Random r = new Random();
  bool result = r.nextDouble() <= 0.7;
}
