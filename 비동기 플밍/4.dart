// async await이 여러개 중첩되면 순서대로 다 진행되는지
void main() async {
  Future<String> a() async {
    return await Future.delayed(Duration(seconds: 1), () => 'Future test');
  }

  Future<int> b() async {
    print('a: ${await a()}');
    return await Future.delayed(Duration(seconds: 1), () => 1999);
  }

  Future<bool> c() async {
    print('b: ${await b()}');
    return await Future.delayed(Duration(seconds: 1), () => true);
  }

  print('start');
  // print(c());
  print('c: ${await c()}');
  print('end');
}
