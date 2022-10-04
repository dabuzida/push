import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  DateTime _currentTime = DateTime.now();
  int _currentTimeToUnixTimeMilli = _currentTime.millisecondsSinceEpoch; // 현재 UNIX time[ms]
  int _currentTimeToUnixTimeMicro = _currentTime.microsecondsSinceEpoch; // 현재 UNIX time[ms]
  DateTime _currentTimeFromUnixMilli = DateTime.fromMillisecondsSinceEpoch(_currentTimeToUnixTimeMilli);
  DateTime _currentTimeFromUnixMicro = DateTime.fromMicrosecondsSinceEpoch(_currentTimeToUnixTimeMicro);

  DateTime oneHourFromNows = _currentTime.add(new Duration(hours: 1));
  DateTime oneDayFromNow = _currentTime.add(new Duration(days: -1));

  print(_currentTime);
  print(_currentTimeToUnixTimeMilli);
  // print(_currentTimeToUnixTimeMicro);
  // print(_currentTimeFromUnixMilli);
  // print(_currentTimeFromUnixMicro);

  print(oneHourFromNows);
  print(oneDayFromNow);
}
