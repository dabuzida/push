// null safety

import 'dart:collection';
import 'dart:ffi';
import 'dart:math';

void main() async {
  /* Person p = Person();
  print(p.nameChange(p.name));

  People pp = People();

  String a = 'abac';
  print(a[a.length - 1]);

  var acceptor = new List.filled(5, null, growable: false);
  print(acceptor); */

  String x = '6.';
  double y = double.parse(x);
  double z = double.parse('0.6');
  print(y.runtimeType);
  print(z);

  if (y is double) {
    var num1212 = 12;
  }

  /* var v = <String>['0.5', '+', '0.7'];
  double num1 = double.parse(v[0]);
  double num2 = double.parse(v[2]);
  late double result;
  String sign = v[1];

  switch (sign) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
  }
  print(result);
  print(result.runtimeType); */
  String vi = 'blind';
  int ii = 3;
  String xi = vi.substring(0, vi.length - ii);
  print(vi);
  print(xi);

  LinkedHashMap ivi = new LinkedHashMap();
  // print(ivi);
  ivi.addAll({'8 × 4': '32'});
  ivi.addAll({'8 × 5': '32'});
  ivi.addAll({'8 × 4': '32'});
  ivi.addAll({'8 × 4': '32'});
  // print(ivi);

  List<Map<String, String>> iv = [
    {'8 × 4': '32'}
  ];
  // print(iv);
  iv.add({'8 × 4': '32'});
  iv.add({'8 × 5': '40'});
  // print(iv);

  // iv.forEach((e) {
  //   print(e.keys);
  //   print(e.values);
  //   print(e.entries);
  // });
  // print(iv[0].keys);
  // print(iv[1].keys);
  // print(iv[2].keys);
  // print(iv[0].values);

// map의 keys의 특정키 뽑아내기
  /*  Map v = {'s': 'as', 'a': 'df', 'c': 'fder'};
  print(v.keys.last);

  v.length > 10 ? print('hi') : print('good');

  List xix = [];
  for (int i = 0; i < 10000; i++) {
    xix.add(Random().nextInt(10000));
    // int viv = Random().nextInt(1084);
  }
  xix.sort();

  print('min: ${xix[0]}, max: ${xix[999]}');

  String xixi = '21312.234234234';
  int viii = xixi.indexOf('.');
  String xii = xixi.substring(viii);
  String xiii = xixi.substring(0, viii + 4);
  print(viii);
  print(xii);
  print(xiii);

  print(Random().nextInt(2)); */

  // DateTime now = DateTime.now();
  // String nowStringified = now.toString();

  // print(now);
  // print(nowStringified);
  // print(nowStringified.substring(0, nowStringified.length-7));

/* 
  Map<String, String> viii = {
    '8 × 1': '8',
    '8 × 2': '16',
    '8 × 3': '24',
  };

  print(viii);
  viii.addAll({'8 × 4': '32'});
  // viii.addAll({'8 × 4': '32'});
  // viii.addAll({'8 × 4': '32'});
  // print(viii);
  viii.addEntries([
    MapEntry('8 × 4', '32'),
    // MapEntry('key4', 'D'),
    // MapEntry('key5', 'E'),
    // MapEntry('key6', 'Kindacode.com')
  ]);
  print(viii);

 */

  /* var x = 0 / 0; //NaN
  var y = 5 / 0; //Infinity
  var z = 11; // Finite
  var i = -451; // Negative
  print(x);
  if (y.isInfinite) {
    print(y);
  }
  if (z.isFinite) {
    print(z);
  }
  if (i.isNegative) {
    print(i);
  }
  print( 33+y);
  print(y + 33); */

  Future<String> createOrderMessage() async {
    String order = await fetchUserOrder();
    return 'Your order is: $order';
  }

  print(createOrderMessage());
  Future.delayed(Duration(seconds: 3), () {
    print(createOrderMessage());
  });
  String asis;
  print(22);
  // Future.delayed(const Duration(seconds: 2), () => print(39.455));
  /* Future<dynamic> sk = */
  // print(sk);
  
}

Future<String> fetchUserOrder() => Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
// class Person2 {
//   String? name;
//   int? age;
//   factory Person2(String i, int v) {
//     return Person2(i, v);
//   }
// }

class Box<T> {
  T? x;
  void ss(var x) {
    x = x as T?;
    print(x);
  }
}

// class Person {
//   late String name;
//   Person() {
//     this.name = 'james';
//   }
//   String nameChange(String name) {
//     this.name = name;
//     return name.toUpperCase();
//   }
// }

class People {
  late String name;
  late int age;
  late String hobby;
  // People() {
  //   this.name = 'KIM';
  //   this.age = 11;
  //   this.hobby = 'soccer';
  // }

}


/* 
void main() {
  Person p = Person();
  // p.printAge();
  // print(p.age);
  print(p.nameChange(p.name!));

}

class Person {
  // int x = cc();
  // int age = calculation();
  // void printAge() { 
  //   print('age');
  // }
  String? name;

  Person() {
    this.name = 'peter';
  }

  String nameChange(String name) {
    this.name = name;
    return name.toUpperCase();
  }
}

int cc() {
  print('-0-');
  return 1;
}

int calculation() {
  print('calculate');
  return 30;
} */
