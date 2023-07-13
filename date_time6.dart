void main() {
  final DateTime now = DateTime.now();
  final DateTime future = now.add(const Duration(seconds: 1));
  final DateTime past = now.subtract(const Duration(days: 3));
  final DateTime newDate = now.toUtc();
  print(now.isAfter(past)); // true
  print(past.isBefore(now)); // true
  print(now.isAtSameMomentAs(now)); // true
  print(past.difference(now)); //  3일 72시간
  print(now.compareTo(future)); // -1
  print(now.compareTo(past)); // 1
  print(now.compareTo(newDate)); // 0

  print('--------------------------------------------------------');
  final DateTime now2 = DateTime.now();
  print('현재: $now2');
  print('현재 milliseconds: ${now2.millisecondsSinceEpoch}');
  print('현재 microseconds: ${now2.microsecondsSinceEpoch}');
  print('${now2.year} ${now2.month} ${now2.day} ${now2.hour}');

  print('--------------------------------------------------------');
  final DateTime nowAfterTwoMinutes = DateTime.now().add(const Duration(minutes: 2));
  print('현재부터 2분후: $nowAfterTwoMinutes');
  print('현재부터 2분후 milliseconds: ${nowAfterTwoMinutes.millisecondsSinceEpoch}');
  print('현재부터 2분후 microseconds: ${nowAfterTwoMinutes.microsecondsSinceEpoch}');

  print('--------------------------------------------------------');
  final DateTime myDateTime = DateTime(2023, 7, 13, 13, 40);
  print('myDateTime: $myDateTime');
  print('myDateTime milliseconds: ${myDateTime.millisecondsSinceEpoch}');
  print('myDateTime microseconds: ${myDateTime.microsecondsSinceEpoch}');

  print('--------------------------------------------------------');
  final DateTime dateTimeFromMilli = DateTime.fromMillisecondsSinceEpoch(1684982379527); // 13길이
  final DateTime dateTimeFromMicro = DateTime.fromMicrosecondsSinceEpoch(1684982379527000); // 16길이
  print('dateTimeFromMilli: $dateTimeFromMilli');
  print('dateTimeFromMicro: $dateTimeFromMicro');
}
