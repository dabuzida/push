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
}
