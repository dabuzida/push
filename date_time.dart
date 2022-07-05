import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  // DateTime date = new DateTime(1699081618);
  // print(DateTime.now());
  // print(date);
  final DateTime currentTime = DateTime.now();
  print('currentTime >> $currentTime');

  // 특정 시간을 기입하여 DateTime 타입 생성
  final DateTime specificTime = DateTime(2022, 7, 5, 16, 5, 30, 302); // 날짜 기입하여 생성
  print('specificTime >> $specificTime');

  // Epoch = 1970-01-01 00:00:00.000
  // UTC 영국 그리니치 천문대 기준, 미적용시 +9시간 되어 local time(한국) 시간 적용

  final timestamp = 1627510285; // timestamp in seconds
  final timestamp2 = 1656914151709; // timestamp in seconds

  final DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  final DateTime date2 = DateTime.fromMillisecondsSinceEpoch(timestamp2, isUtc: true);
  final DateTime date3 = DateTime.fromMillisecondsSinceEpoch(timestamp2, isUtc: false);
  print('date >> $date');
  print('date2 UTC time zone >> $date2');
  print('date3 local time zone >> $date3');
}
