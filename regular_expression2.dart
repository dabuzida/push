import 'dart:math';

void main() {
  // RegExp regExp = RegExp('^[a-z][a-z0-9]{3,}');
  RegExp regExp = RegExp('^[a-z][a-z0-9]\$[0-9]{3,}');
  print(regExp.hasMatch('asdd3'));
}
