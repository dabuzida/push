import 'dart:convert';
import 'dart:io';

void main() {
  String jsonString = '''[{  
  "name": "홍길동",
  "email": "gildong@example.com"
  },{
  "name": "고수정",
  "email": "gogo@example.com"
  }]
  ''';
  List<dynamic> userList = jsonDecode(jsonString);
  String json = jsonEncode(userList);
  // var user = User.fromJson(userMap);

  print('${jsonString.runtimeType} >> $jsonString');
  print('${userList.runtimeType} >> $userList');
  print('${json.runtimeType} >> $json');
  // print('${userMap.runtimeType} >> $userMap');
  // print(user);
  // print(user.name);
  // print(user.email);

  // String json = jsonEncode(user);
  // print(json);
  // print(json.runtimeType);
  // print('${.runtimeType} >> $');
}

class User {
  final String name;
  final String email;
  User(this.name, this.email); // 초기화 방법1
  // User(name, email) // 초기화 방법 2
  //     : this.name = name,
  //       email = email;
  // User(this.name, email) : email = email; // 초기화 방법3
  User.fromJson(List json)
      : name = json[0]['name'],
        email = json[0]['email'] {}

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}
