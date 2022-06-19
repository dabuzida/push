import 'dart:convert';
import 'dart:io';

void main() {
  String jsonString = '''{
  "name": "홍길동",
  "email": "gildong@example.com"
  }''';
  print(jsonString);

  Map<String, dynamic> user = jsonDecode(jsonString);
  sleep(Duration(seconds: 2));

  print(user);
}
