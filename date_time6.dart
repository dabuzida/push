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

  final DateTime now = DateTime.now();
  final int x = now.millisecondsSinceEpoch;

  final DateTime nowTime = DateTime.fromMillisecondsSinceEpoch(x);
  final DateTime timeAfterNow = nowTime.add(Duration(hours: 1));

  print(nowTime);
  print(timeAfterNow);

  final String dateTime = DateTime.fromMillisecondsSinceEpoch(x, isUtc: true).toString();
  print(dateTime);
  print(11.23.toInt());
}
