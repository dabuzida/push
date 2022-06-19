void main() async {
  Future<String> f() async {
    // 1
    return Future.delayed(Duration(seconds: 1), () {
      return "Hello Future!!";
    });

    // 2
    // return Future.delayed(Duration(seconds: 1), () => "Hello Future!!");
  }

  print('start');
  Future<String> r = f();
  print(r);
  await Future.delayed(Duration(seconds: 1));
  r.then((value) => print(value));
  // f().then((resolve) => print(resolve));
  print('end');

  // print('start');
  // Future<int> ff = Future<int>.delayed(Duration(seconds: 2), () => 101110);
  // print('1 ff: $ff');
  // await Future.delayed(Duration(seconds: 1));
  // print('2 ff: $ff');
  // print('3 ff: ${await ff}');
  // // ff.then((value) => print('3 ff: $value'));
  // print('end');
}
