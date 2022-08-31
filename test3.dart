import 'dart:math';

void main() {
  Animal _animal = Animal("tiger", 2, Type(false), false);
  print(_animal);
  print(_animal.herbivores);

  _animal.herbivores = !_animal.herbivores;
  print(_animal.herbivores);
}

class Animal {
  String name;
  int age;
  bool herbivores;
  Type type;
  Animal(this.name, this.age, this.type, this.herbivores);
}

class Type {
  bool isTwoFoot;
  Type(this.isTwoFoot);
}
