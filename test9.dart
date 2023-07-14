import 'dart:math';

void main() {
  print(108 ~/ 13);
  print(108 / 13);
  print(108 % 13);

  print(0.compareTo(0) == 0);

  final int day = 86400000;
  final int hour = 3600000;
  final int minute = 60000;

  print(day * 1 + hour * 2 + minute * 3);
  print(day * 2 + hour * 0 + minute * 4);
  print(day * 2 + hour * 23 + minute * 0);
  print(day * 0 + hour * 10 + minute * 0);
  Random r = new Random();
  bool result = r.nextDouble() <= 0.7;
}
