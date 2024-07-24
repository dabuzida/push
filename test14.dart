import 'dart:async';

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

  final List<String> qq = List<String>.filled(5, '1');
  print(qq);
  qq.fillRange(0, 5, '2');
  print(qq);
  print(qq);

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
}
