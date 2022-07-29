import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  // UNIX time = Epoch time: 1970-01-01 00:00:00.000부터 현재 시간의 차이를 초단위로 환산

  int _unixTimeMilliSec = DateTime.now().millisecondsSinceEpoch; // 현재 UNIX time[ms]
  int _unixTimeMicroSec = DateTime.now().microsecondsSinceEpoch; // 현재 UNIX time[us]

  DateTime currTime = DateTime.fromMillisecondsSinceEpoch(_unixTimeMilliSec);
  DateTime currTime2 = DateTime.fromMicrosecondsSinceEpoch(_unixTimeMicroSec);

  print(_unixTimeMilliSec);
  print(_unixTimeMicroSec);
  print(DateTime.now());
  print(currTime);
  print(currTime2);

  DateTime _now = DateTime.now();
  DateTime sixtyDaysFromNow = _now.add(new Duration(days: 60));
  print(sixtyDaysFromNow);
}
