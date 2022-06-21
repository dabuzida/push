import 'dart:convert';
import 'dart:io';

void main() {
  String jsonString = '''{
  "name": "홍길동",
  "email": "gildong@example.com"
  }
  ''';
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  User user = User.fromJson(userMap);
  String json = jsonEncode(user);
  print('${jsonString.runtimeType} >> $jsonString');
  print('${userMap.runtimeType} >> $userMap');
  print('${user.runtimeType} >> $user');
  print(user.name);
  print(user.email);
  print('${json.runtimeType} >> $json');
  // print('${.runtimeType} >> $');
}

class User {
  final String name;
  final String email;
  User(this.name, this.email);
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}
