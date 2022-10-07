void main() {}

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

/* 
class A{
	A(this.bb, this.cc) // 처럼 ()안에서 초기화 가능
	
	String bb;
	String cc;
	A(): cc='sewe', bb='sdf'; // 처럼 :를 써서 초기화
	
	A(this.bb): cc='cave'; // 위 2개를 섞음
	A(???){
	여기는 초기화 x 두번째 대입, 적어도 다트문법에서는
	}
}


 */

class Animal {
  final String _gender;
  final int numberOfArm;
  final int numberOfLeg;
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
