Future futureNumber() {
  return Future.delayed(Duration(seconds: 3), () => 100);
}

void main() async {
  Future future = futureNumber();
  print('start');
  print('future: $future');
  await Future.delayed(Duration(seconds: 1), (() {
    print('waiting');
  }));
  print('future: ${ future}');

  // await future.then((val) {
  //   print('val: $val');
  // }).catchError(((error) {
  //   print('error: $error');
  // }));
  print('end');

  // int future2 =  futureNumber();
  // print('future: $future');
  // Future.delayed(Duration(seconds: 1), (() {
  //   print('waiting');
  // }));
  // print('future2: $future2');
}
