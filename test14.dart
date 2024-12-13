import 'dart:async';

import 'dart_test6.dart';

class MyNode {
  Map<String, MyNode?> children = <String, MyNode?>{};

  MyNode() {
    children = <String, MyNode?>{};
  }

  // MyNode.test({String prefix = ''}) {
  //   children = <String, MyNode?>{prefix: null};
  // }

  // MyNode.test2({required List<String> prefixList}) {
  //   final Map<String, MyNode?> ii = <String, MyNode?>{};
  //   for (String element in prefixList) {
  //     ii.addEntries(<String, MyNode?>{element: null}.entries);
  //   }

  //   children = ii;
  // }
}

void main() {
  // DateTime? ee = DateTime.parse('2024/07/16');
  // final DateTime? qq = DateTime.tryParse('');

  // print(ee);
  // print(qq);
  // final ww = int.parse('');
  // print(ww);

  // print(int.tryParse('30.0'));
  // num zz = 11.3;
  // print(zz is int);

  // final List<String> ww = '- 22-'.split('-');
  // print(ww);

  // final num? ref2 = num.tryParse('55.3');
  // print(ref2?.toInt());
  // final List<String> _refinedRow = List<String>.filled(13, '');
  // print(_refinedRow);

  // Timer.periodic(
  //   const Duration(seconds: 1),
  //   (_) {
  //     print(59595959);
  //   },
  // );

  // final List<num?> ww = <num?>[143, 456, null, 1243, 256, null, 34134, 523, null, 214, -2, 14];
  // print(ww);

  // ww.sort(
  //   (num? a, num? b) {
  //     if (a == null) {
  //       return -1;
  //     }

  //     if (b == null) {
  //       return 1;
  //     }

  //     return a.compareTo(b);
  //     return b.compareTo(a);
  //   },
  // );

  // print(ww);

//   final numbers = <String>['three', 'four'];
// // Sort from shortest to longest.
//   numbers.sort((a, b) => a.length.compareTo(b.length));
//   print(numbers); // [two, four, three]

  // final DateTime now = DateTime.now();
  // final DateTime past = DateTime(2024, 8, 1);
  // final DateTime now2 = DateTime(2024, 8, 6);
  // final DateTime future = DateTime(2024, 8, 11);

  // final int a = DateTime(past.year, past.month, past.day).difference(DateTime(now.year, now.month, now.day)).inDays;
  // final int b = DateTime(now2.year, now2.month, now2.day).difference(DateTime(now.year, now.month, now.day)).inDays;
  // final int c = DateTime(future.year, future.month, future.day).difference(DateTime(now.year, now.month, now.day)).inDays;

  // final int d = DateTime(now.year, now.month, now.day).difference(DateTime(past.year, past.month, past.day)).inDays;
  // final int e = DateTime(now.year, now.month, now.day).difference(DateTime(now2.year, now2.month, now2.day)).inDays;
  // final int f = DateTime(now.year, now.month, now.day).difference(DateTime(future.year, future.month, future.day)).inDays;

  // print('$a $b $c $d $e $f');

  // print(DateTime(1990, 10, 17).millisecondsSinceEpoch);

  // print(1 == null);
  // print(1 == 1);
  // print(1 == 3);

  // final String ww = '';
  // const String ee = '';

  // final String ww2 = DateTime.now().toString();
  // const String ee3 = DateTime.now().toString();

  // final List<String> vv = <String>['12-56', '1234'];
  // String xx = '13-342--';
  // print(xx);

  // String xx2 = xx.replaceAll('-', '');
  // print(xx);
  // print(xx2);

  // DateTime ww = DateTime(-1, 11, 3);
  // 1.8글자

  // 2.8글자를 DateTime.tryParse한게 null이면 안됨
  // 3.년월일로 substring하고, 각각을 int.tryparse 한게 null 이면 안됨

  // 4.년월일 각각과 DateTime.year, DateTime.month, DateTime.day가 모두 일치해야함
  // String inputDate = '20240543';
  // String year = inputDate.substring(0, 4);
  // String month = inputDate.substring(4, 6);
  // String day = inputDate.substring(6);

  // int? year2 = int.tryParse(year);
  // int? month2 = int.tryParse(month);
  // int? day2 = int.tryParse(day);

  // print('year: $year, month: $month, day: $day');
  // print('year: $year2, month: $month2, day: $day2');
  // DateTime? date1 = DateTime.tryParse(inputDate);

  // print('year: ${date1?.year}, month: ${date1?.month}, day: ${date1?.day}');

  // final ww = DateTime(2023, 10, 10);
  // final ww2 = DateTime(2024, 10, 10);
  // print(ww.millisecondsSinceEpoch);
  // print(ww2.millisecondsSinceEpoch);

  // final List<String> as = <String>['1.0.1', '1.1.23', '1.1.53', '1.1.03', '1.1.623', '1.1.123'];
  // print(as);

  // as.sort();
  // print(as);

  // ww();

  final List<String> _updated = <String>[];
  final List<String> _origin = <String>[
    '000.000.000',
    '000.000.001',
    '000.001.000',
    '001.000.000',
    '000.000.010',
    '000.010.000',
    '010.000.000',
    // '000.000.999',
    // '000.999.000',
    // '999.000.000',
  ];

  String ss = '000.000.999';
// patch
  // final ee = ss.split('.');

  // final String patchhh = ee.last;
  // print(patchhh);
  // final int patchhh2 = int.parse(patchhh);
  // print(patchhh2);
  // final String patchhh3 = (patchhh2 + 1).toString().padLeft(3, '0');
  // print(patchhh3);

  // final ee3 = ss.split('.').map(int.parse).toList();

  // print(ee);
  // print(ee3);
  // xxx.xxx.xxx

  // 2############

  final RegExp regExp54 = RegExp(r'[0-9]{1}.{1}[0-9]{1}');
  RegExp regExp57 = RegExp(r"[a-z]+\.[a-z]+");
  RegExp regExp5 = RegExp(r'^[0-9]{3}\.[0-9]{3}\.[0-9]{3}$');

  // final RegExp regExp5 = RegExp(r'\.');
  String asdf = '2.3.32';
  final bool isValid = regExp5.hasMatch(asdf);
  print(isValid);

  final RegExp regExp = RegExp(r'^[0-9]{4,19}$');
  final RegExp regExp3 = RegExp(r'^[0-9].[0-9].[0-9]$');
  final RegExp regExp43 = RegExp(r'^{0-9}.{0-9}.{0-9}$');
  final RegExp regExp2 = RegExp(r'^[a-z0-9]{4,19}$');
}

void ww() {
  final List<String> ww = <String>[
    '001.324.134',
    '001.324.134 ',
    '1.324.14 ',
  ];
  final List<String> ww2 = <String>[];
  for (String element in ww) {
    final List<String> re = element.split('.');
    if (re.length != 3 || re[0].length != 3 || re[1].length != 3 || re[2].length != 3) {
      break;
    }
    ww2.add(element);
  }
  print(ww2);
}
