import 'dart:math';

void main() {
  // double x = 1.51512;
  // print(x.round());
  // print(x.roundToDouble());
  // print(x.ceil());
  // print(x.ceilToDouble());

  // print(double.parse(x.toStringAsFixed(1)));
  List list = [1, 230, 2302, -495, 45939, 645990.430904, 4, 5.1, 6, 53, 4543, 456, 765, 3, 4];
  num maxValue = 0;
  for (int i = 0; i < list.length; i++) {
    maxValue = max(maxValue, list[i]);
  }
  print(maxValue);
}
