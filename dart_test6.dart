import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  String jsonString = '''{
  "name": "홍길동",
  "email": "gildong@example.com"
  }''';
  print(jsonString);
  List s = [
    1,
    23,
    2,
  ];
  Map<String, dynamic> user = jsonDecode(jsonString);
  sleep(Duration(seconds: 2));

  print(user);
}
