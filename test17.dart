import 'dart:math';

void main() {
  // final List<String> _versionList = <String>[
  //   '000.000.000',
  //   '000.000.001',
  //   '000.001.000',
  //   '001.000.000',
  //   '000.000.010',
  //   '000.010.000',
  //   '010.000.000.111',

  //   // '000.000.999',
  //   // '000.999.000',
  //   // '999.000.000',
  // ];

  // RegExp regExp = RegExp(r'^[0-9]{3}\.[0-9]{3}\.[0-9]{3}$');

  // for (String element in _versionList) {
  //   final bool isValid = regExp.hasMatch(element);

  //   print('$element: $isValid');
  // }

  // #
  // List<String> wrt = <String>[];
  // for (int i = 0; i < 10; i++) {
  //   wrt.add(makeString(5));
  // }
  // print(wrt);

  // #
  // for (int i = 0; i < 10; i++) {
  //   // print(Random().nextInt(1));
  //   print(Random().nextInt(10) + 7);
  // }

  // final aaa = <String>{'A', 'B', 'C'};
  // final bbb = <String>{'A', 'E', 'F'};
  // aaa.add('value');
  // print(aaa);
  // aaa.add('value');
  // print(aaa);

  // List<String> rr = <String>['a', 'b', 'c'];
  // print(rr);
  // final List<String?> ww = rr.map(
  //   (String e) {
  //     if (e == 'a') {
  //       return 'vvv';
  //     }
  //     return e;
  //   },
  // ).toList();
  // print(ww);

  // rr.reduce(
  //   (value, element) {
  //     print('>> $value $element');
  //     return value + element;
  //   },
  // );

  // People? people = People();

  // print(people.name);
  // people = null;
  // print(people?.name);

  // people?.name = 'asdf';
  // print(people?.name);

  // People aa = People();
  // People bb = People();
  // People? cc;
  // print(aa.hashCode);
  // print(bb.hashCode);
  // aa.name = '234tagr';

  // int? dd;
  // print(cc.hashCode);
  // print(dd.hashCode);

  final List<String> ww = 'bogunso/manager/xxx/aaa'.split('/');
  // print(ww);

  final w = 1.hashCode;
  final e = w - 11600;
  print(w);
  print(e.hashCode);
  print(1.hashCode);
}

class People {
  String name = 'zxcv';
}

// void xx(){

// const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
// Random _rnd = Random();

// String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
//     length, (_) => _chars.codeUnitAt(Random().nextInt(_chars.length))));
// }

String makeString(int length) {
  return List<String>.generate(length, (_) => 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'[Random().nextInt('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'.length)]).join();
}
