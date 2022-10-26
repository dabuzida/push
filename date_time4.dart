import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  DateTime x = DateTime(2022, 7, 06);
  // DateTime x = DateTime(2022, 7, 06, 22, 10, 42, 302);
  int y = x.millisecondsSinceEpoch;
  DateTime z = DateTime.fromMillisecondsSinceEpoch(y);
  print(x);
  print(y);
  print(z);
  int xy = DateTime(2022, 08, 28).millisecondsSinceEpoch;
  print(xy);
  final xu = DateTime.fromMillisecondsSinceEpoch(xy);
  print(xu);
  // int xx = '2022-08-28 00:00:00'.millisecondsSinceEpoch;
}
