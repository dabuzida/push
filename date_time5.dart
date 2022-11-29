void main() {
  final DateTime x = DateTime(2022, 11, 3, 9);
  final int xx = x.millisecondsSinceEpoch;
  // print(xx);
  DateTime z = DateTime.fromMillisecondsSinceEpoch(xx);
  // print(z);

  final String ss = '1122';
  final String rr = '112';
  // print(ss == rr);
  // print(identical(ss, rr));
  // print(ss.compareTo(rr));

  final List<String> list = <String>[
    '2022-11-18 11:22',
    '2022-11-17 11:22',
  ];

  final String v1 = list[0];
  final String v2 = list[1];
  final String d1 = '2022-11-18';
  final String d2 = '2022-11-17';
  final String d3 = v1.substring(0, 10);
  final String d4 = v2.substring(0, 10);

  // print(d3);
  // print(d4);
  print(d1 == d2);
  print(identical(d1, d2));
  print(d1.compareTo(d2));
  print('====');
  print(d3 == d4);
  print(identical(d3, d4));
  print(d3.compareTo(d4));
}
