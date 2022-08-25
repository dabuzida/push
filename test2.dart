import 'dart:math';

void main() {
  Map<String, bool> _pow = {
    'hasRootPower': false,
    'hasManagerPower': false,
    'hasVideoPower': false,
    'hasBogunsoPower': false,
    'hasCallPower': false,
    'hasCallReportPublishPower': false,
    'hasCallListPower': false,
    'hasCallInfoFullPower': false,
  };

  print(_pow.keys.elementAt(0));
  print(_pow.keys.elementAt(7));
  print(_pow.keys.elementAt(0).runtimeType);
  print(_pow.values.elementAt(0));
  print(_pow.values.elementAt(0).runtimeType);
}
