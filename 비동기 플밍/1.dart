int val = 0;
Future<int> post() async {
  Future.delayed(Duration(seconds: 1), (() {
    print('delayed~!!');
  }));
  val++;
  return val;
}
void main() async {
  final p1 = post;
  final p2 = post;
  final p3 = post;
  final r1 = await p1();
  print('r1: $r1');
  final r2 = await p2();
  print('r2: $r2');
  final r3 = await p3();
  print('r3: $r3');

  // print(1);
  // Future.delayed(Duration(seconds: 1), (() {
  //   print(3);
  // }));
  // print(2);
}
