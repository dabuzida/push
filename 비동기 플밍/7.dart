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

void _fetch() {
  print('fetch start');
  work().then((value) => print(value)).then((value) => delayed()).then((value) => work2()).then((value) => print(value)).then((value) => delayed2());
  print('fetch end');
}

Future<int> _initState() async {
  await Future.delayed(Duration(seconds: 5), () => print('initState delayed'));
  return 1;
}

void main() async {
  // await _initState();
  print(1);
  Future.delayed(Duration(seconds: 2), () {
    print(3);
  });
  print(2);

  // void asyncFunc() {
  //   print('asyncFunc start');
  //   work().then((value) => print(value)).then((value) => delayed()).then((value) => work2()).then((value) => print(value)).then((value) => delayed2());
  //   print('asyncFunc end');
  //   // print(_work);
  //   // print(_work2);
  // }

  // print('start');
  // print('sync work1');
  // asyncFunc();
  // print('sync work2');
  // for (int i = 0; i < 1000000000; i++) {
  //   if (i == 999291890) print('for loop');
  // }
  // print('sync work3');
  // await Future.delayed(Duration(seconds: 2));
  // print('sync work4');
  // Future.delayed(Duration(seconds: 1), () => 'sync work5').then((value) {
  //   print(value);
  //   return 'end';
  // }).then((value) => print('sync work $value'));
}
