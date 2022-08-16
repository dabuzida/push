import 'dart:math';

void main() {
  // r옵션 의미, regExp 메소드 이해, 특수문자만을 뜻하는 정규표현
  RegExp regExp = RegExp('[a-z]');
  // RegExp regExp = RegExp(r'[a-zㄱ-ㅎ]');
  RegExp regExp2 = RegExp('[a-z0-9`~!@#\$%^&*()-_=+[\\]\\{}|;\':",.<>?]+');
  // RegExp regExp2 = RegExp('[a-z0-9`~!@#\$%^&*()-_=+[\\]\\{}|;\':",.<>?]{8,}');
  // RegExp regExp2 = RegExp('[a-z0-9`~!@#\$%^&*()-_=+[\\]{}\\|;\':",./<>?]{8,}');

  String value = 'dsfsd';
  String value2 = ']';
  print(value2);
  print(regExp2.pattern);
  print(regExp.hasMatch(value));
  print(regExp2.hasMatch(value2));

  // print('---------------------------------------');
  // Map<String, String> x = {};
  // x.addEntries({'s': 'y'}.entries);
  // print(x);

  // print('  '.isEmpty);
  // print('  '.trim().isEmpty);
  // print(''.isEmpty);
}
