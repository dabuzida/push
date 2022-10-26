import 'dart:math';

void main() {
  // num a = 11;
  // num b = 11.343;
  // print(a / 11);
  // print(b / 3);

  // int w = 16420;
  // print(w ~/ 3600);
  // print(w % 3600);
  print((16420 / 3600).toStringAsFixed(1));
  print((16420 / 3600).toStringAsFixed(1).runtimeType);
  print(double.parse((16420 / 3600).toStringAsFixed(1)));
  print(double.parse((16420 / 3600).toStringAsFixed(1)).runtimeType);
  print(pow(2, 4));

  int n = 1;
  print(n + 0.0);
  print((n + 0.0).runtimeType);
  double num = 2932.549203400;
  print(num.toStringAsFixed(2));
  print(num.toStringAsFixed(2).runtimeType);
  print(double.parse(num.toStringAsFixed(2)));
}

extension IntExtension on int {
  String get secondsToElapsedTimeFormat {
    String str = '';

    final int h = this ~/ 3600;
    if (h > 0) {
      str += '${h.toString().padLeft(1, '0')}시간';
    }

    if (str.isNotEmpty) {
      str += ' ';
    }

    final int m = (this ~/ 60) % 60;
    if (m > 0) {
      str += '${m.toString().padLeft(1, '0')}분';
    }

    if (str.isNotEmpty) {
      str += ' ';
    }

    final int s = this % 60;
    if (s >= 0) {
      str += '${s.toString().padLeft(1, '0')}초';
    }

    return str;
  }
}
