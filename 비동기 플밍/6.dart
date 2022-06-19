import '1.dart';

Future<String> work() {
  return Future.delayed(Duration(seconds: 1), () => '작업1');
}

Future<void> delayed() {
  return Future.delayed(Duration(seconds: 1), () => print('지연1'));
}

Future<String> work2() {
  return Future.delayed(Duration(seconds: 1), () => '작업2');
}

Future<void> delayed2() {
  return Future.delayed(Duration(seconds: 1), () => print('지연2'));
}

// 동기, 비동기 작업이 혼재한 작업에서
// 비동기 작업만 await로 지연 주기
// 작업1 >> 지연1초 >> 작업2 >> 지연1초
void main() async {
  void asyncFunc()  {
    print('asyncFunc start');
    work()
      .then((value) => print(value))
      .then((value) => delayed())
      .then((value) => work2())
      .then((value) => print(value))
      .then((value) => delayed2());    
    print('asyncFunc end');
    // print(_work);
    // print(_work2);
  }

  print('start');
  print('sync work1');
  asyncFunc();
  print('sync work2');
  for (int i = 0; i < 1000000000; i++) {
    if (i == 999291890) print('for loop');
  }
  print('sync work3');
  await Future.delayed(Duration(seconds: 2));
  print('sync work4');
  Future.delayed(Duration(seconds: 1), () => 'sync work5')
    .then((value) {
      print(value);
      return 'end';
  }).then((value) => print('sync work $value'));
}
