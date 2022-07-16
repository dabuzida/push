import 'dart:math';

class Person {
  String? name;
  int? age;
  String? sex;
  // Person(){}
  Person({String? name, int? age, String? sex}) {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

void main() async {
  Person p1 = new Person();
  Person p2 = new Person(age: 30);
  print(p2.age);
  print(p2.name);
  print(p2.sex);

  // print(Random().nextInt(10));
  // await Future.delayed(Duration(seconds: 2), () => print(Random().nextInt(10)));
  // print(Random().nextInt(10));

  // int x = 12345;
  // int y = x ~/ 1000;
  // print(x);
  // print(y);

  // List xx = [];
  // if (xx is List) {
  //   print(1);
  // }
  // if (true && 'asd' != null && true) {
  //   // if (true && 'asd' == null) {
  //   print(328938939);
  // }

  // bool? k;
  // k = true;
  // if (k != null && k!) {
  //   print(49494);
  // }
}
