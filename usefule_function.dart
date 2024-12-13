import 'dart:math';

void main() {
  final List<String> _list = _makeStringList();
  print(_list);
}

String _makeString(int length) {
  const String xx = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List<String>.generate(length, (_) => xx[Random().nextInt(xx.length)]).join();
}

int _makeNumber() {
  return Random().nextInt(10) + 30;
  // return Random().nextInt(10) + 7;
}

List<String> _makeStringList() {
  final List<String> ww = <String>[];
  for (int i = 0; i < _makeNumber(); i++) {
    ww.add(_makeString(5));
  }

  return ww;
}
