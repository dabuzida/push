import 'dart:convert';
import 'dart:io';

void main() {
  String jsonString = '''{
  "name": "홍길동",
  "email": "gildong@example.com"
  }
  ''';
  Map<String, dynamic> user = jsonDecode(jsonString);

  // print('${} >> $');
  print('${jsonString.runtimeType} >> $jsonString');
  print('${user.runtimeType} >> $user');
  print(user['name']);
  print(user['email']);
  print(user['emaillll']);
}
