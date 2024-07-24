import 'dart:convert';
import 'dart:math';

void main() {
  // final int a = 100;
  // final int b = 32;
  // print(a ~/ b); // ㅁ
  // print(a % b);

  // final s = List<bool>.filled(5, false);
  // print(s);
  // String? ww = 'asdf';
  // if (true) {
  //   ww = null;
  // }
  // final int? xx = int.tryParse('');

  // print(xx);

  // #
  // final List<String> areas = <String>['경기도'];
  // // final List<String> areas = <String>['경기도', '애리조나', '서울'];
  // final String ww = areas.reduce((value, element) => '$value/$element');
  // print(ww);

  // const data = {'text': 'foo', 'value': 2, 'status': false, 'extra': null};
  // final String jsonString = jsonEncode(data);
  // print(data);
  // print(jsonString);
  String sample = '/';
  print('start');
  if (sample.startsWith('/')) {
    sample = sample.substring(1);
    print('>>: $sample');
    print('>>: ${sample.isEmpty}');
  } else {
    print('>>: $sample');
    print('>>: ${sample.length}');
  }
  print('end');

  print(DateTime.fromMillisecondsSinceEpoch(1718685144047));
}
