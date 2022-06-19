import 'dart:io';
// Future, asnyc, await

void main() {
  $ToT();
}

void $ToT() async {
  _alpha();
  await _beta();
  _gamma();
}

void _alpha() {
  String x = '1';
  print(x);
}

Future<String?> _beta() async {
  String? x;
  Duration time = Duration(seconds: 3);
  // sleep(time); // synchronous 시간 지연 설정
  // x = '2';
  // print(x);

// await Future.delayed(time, () { // asynchronous 시간 지연 설정
//     print(2);
//   });

  // asynchronous 시간 지연 설정인데, sync처럼 따로 독립적 진행하지 않고 순차적으로
  // 진행한다
  await Future.delayed(time, () {
    // x = '2';
    print(x);
  });
  return x;
}

void _gamma() {
  String x = '3';
  print(x);
}

