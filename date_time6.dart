void main() {
  // final DateTime now = DateTime.now();
  // final DateTime future = now.add(const Duration(seconds: 1));
  // final DateTime past = now.subtract(const Duration(days: 3));
  // final DateTime newDate = now.toUtc();
  // final DateTime x = DateTime(2022, 5, 11, 22, 11, 22, 333, 434);
  // final DateTime x2 = DateTime(2022, 5, 11, 22, 11, 22, 333, 555);
  // final DateTime x3 = DateTime(2022, 5, 11);
  // final bool y = x.isAfter(x2);
  // final bool y2 = x.isBefore(x2);
  // final bool y3 = x.isAtSameMomentAs(x2);
  // final Duration y4 = x.difference(x2);
  // print(x3);
  // print(y);
  // print(y2);
  // print(y3);
  // print(y4);
  // print(now.compareTo(future)); // -1
  // print(now.compareTo(past)); // 1
  // print(now.compareTo(newDate)); // 0

  // final DateTime z = DateTime(2022, 5, 10);
  // final DateTime z2 = DateTime(2022, 5, 13);
  // final DateTime z3 = DateTime(2022, 5, 5);
  // final int s = z.compareTo(z2); // -1 : z < z2
  // final int s2 = z.compareTo(z3); // 1 : z > z3
  // print(s);
  // print(s2);

// : 1개월 / 3개월 / 6개월 / 1년 / 30년

  // var date = new DateTime(2019, 9, 4);
  // var newDate = new DateTime(date.year + 1, date.month + 2, date.day);

  // final DateTime now = DateTime.now();
  // final DateTime side = DateTime(now.year, now.month + 3);
  // final DateTime inner = DateTime(now.year + 10, now.month + 3, now.day, now.hour, now.minute, now.second, now.millisecond, now.microsecond);

  // print(now);
  // print(side);
  // print(inner);
  // final int x = now.millisecondsSinceEpoch;

  final DateTime now = DateTime.now();
  print('현재: $now');
  print('현재 milliseconds: ${now.millisecondsSinceEpoch}');
  print('현재 microseconds: ${now.microsecondsSinceEpoch}');

  print('');
  final DateTime nowAfterTwoMinutes = DateTime.now().add(const Duration(minutes: 2));
  print('현재부터 2분후: $nowAfterTwoMinutes');
  print('현재부터 2분후 milliseconds: ${nowAfterTwoMinutes.millisecondsSinceEpoch}');
  print('현재부터 2분후 microseconds: ${nowAfterTwoMinutes.microsecondsSinceEpoch}');

  print('');
  final DateTime myDateTime = DateTime(2023, 7, 13, 13, 40);
  print('myDateTime: $myDateTime');
  print('myDateTime milliseconds: ${myDateTime.millisecondsSinceEpoch}');
  print('myDateTime microseconds: ${myDateTime.microsecondsSinceEpoch}');

  print('');
  final DateTime dateTimeFromMilli = DateTime.fromMillisecondsSinceEpoch(1684982379527); // 13길이
  final DateTime dateTimeFromMicro = DateTime.fromMicrosecondsSinceEpoch(1684982379527000); // 16길이
  print('dateTimeFromMilli: $dateTimeFromMilli');
  print('dateTimeFromMicro: $dateTimeFromMicro');
}
