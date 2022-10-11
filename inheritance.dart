class X {
  String i;
  String? j;
  String k;

  X({
    required this.i,
    this.j,
    required this.k,
  });
}

class Y extends X {
  int? n;
  String u;
  String xyz;
  String? p;
  String? q;
  String r;

  Y({this.p, required String i, String? j, this.n, required super.k, required this.xyz, required this.r})
      : u = i,
        q = i,
        // r = i,
        super(i: i);
}

class A {
  String bb;
  String cc;

  // A(this.bb, this.cc) // 처럼 ()안에서 초기화 가능
  // A(): cc='sewe', bb='sdf'; // 처럼 :를 써서 초기화
  A(this.bb) : cc = 'cave'; // 위 2개를 섞음

  // A(???){
  // 여기는 초기화 x 두번째 대입, 적어도 다트문법에서는
  // }
}

class Animal {
  String _gender;
  final int numberOfArm;
  final int numberOfLeg;

  String xx() {
    return _gender;
  }

  String _xx() {
    return _gender;
  }

  String get getGender => _gender;
  set setGender(String gender) => _gender = gender;
  // set setGender(String gender) => _gender;

  // set setGender(String gender) {
  //   _gender = gender;
  // }

  set setGender2(String gender) => _gender;

  Animal(
    this._gender,
    this.numberOfArm,
    this.numberOfLeg,
  );
}

class Monkey extends Animal {
  Monkey(super.gender, super.numberOfArm, super.numberOfLeg);
}

mixin Person implements Animal {}

class Idol {
  String name;
  String group;
  // Idol(this.group, this.name);
  // Idol({required this.group, required this.name});
  // Idol({required group, required name})
  //     : this.name = name,
  //       this.group = group;
  Idol({
    required String group,
    required String name,
  })  : this.name = name,
        this.group = group;
}

// 인터페이스, abstract는 생략해도 되는듯
abstract class Vehicle {
  String age;
  int mileage;
  void xx() {}
  Vehicle(this.age, this.mileage);
}

// 인터페이스를 implements 할땐, 멤버변수, 메소드를 재정의 해줘야하는듯
class Car extends Vehicle {
  String age = '2;';
  int mileage = 22;

  Car(super.age, super.mileage);

  int xx() {
    return 11;
  }
}

abstract class Doer {
  // Define instance variables and methods...
  int a = 1;

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
  }
}

abstract class Doctor {
  // String name;
  void introduce() {}
  // Doctor({required this.name});
}

class Patient {
  String name;
  Patient(this.name);
}

abstract class Resident implements Doctor {
  String? gender;
  void introduce() {}

  // Resident(String name, {required this.gender}) : super(name: name);

  // Resident(String name, {required this.gender}) : super(name: name);

  // Customer( super.name, {required this.gender});
}

void main() {
  String s = 'asdf';
  String ss = s.substring(1);
  if (s.contains('a')) print(s);
  s.indexOf('a');

  Patient patient = Patient('ss');
  // Resident resident = Resident('d', gender: 's');
  // resident.introduce();

  Animal ani = Animal('male', 4, 2);
  print(ani.getGender);
  int async = 1;
  int sss = 2;
}
