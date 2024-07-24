import 'dart:math';

void main() {
  final List<bool> ss = List.filled(10, true); // true가 10개 채워진 리스트

  print(ss);
  final ww = ss.map((bool e) => e && false); // map: 리스트같은 자료구조에 쓰는 method. return은 iterable
  print(ww);
  print(ww.runtimeType);

  final qq = [1, 2, 3, 4, 4].map((int e) => (e + 1).toString()).toSet();
  print(qq);
  print(qq.runtimeType);

  final List<String> ee = ['aaa', 'bbb', 'bear'];
  final werg = ee.contains(null);
  print(werg);

  print([''].length);
  print(null == null);
  print(Random());
}

// print('===== ${DateTime.now().millisecondsSinceEpoch.millisecondsToDate(format: 'yyyy-MM-dd HH:mm:ss')} =====');

// print('lhs: ${lhs.name} ${lhs.kioskLastHeartbeatDate?.toInt().millisecondsToDate(format: 'yyyy-MM-dd HH:mm:ss')} ${lhs.kioskConfig?.customerId}');
//   print('rhs: ${rhs.name} ${rhs.kioskLastHeartbeatDate?.toInt().millisecondsToDate(format: 'yyyy-MM-dd HH:mm:ss')} ${rhs.kioskConfig?.customerId}');
  
