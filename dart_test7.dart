import 'dart:convert';
import 'dart:io';

void main() {
  String jsonString = '''{  
"name": "홍길동",
  "email": "gildong@example.com"
  }''';
  print(jsonString);

  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  print(userMap);
  print(user);
  print(user.name);
  print(user.email);

  String json = jsonEncode(user);
  print(json);
  print(json.runtimeType);
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
