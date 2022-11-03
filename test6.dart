void main() {
  int l = 2;
  switch (l) {
    case 1:
      l = 22;
      print(l);
      break;
    default:
      l = 33;
      print(l);
      break;
      print('^^');
  }
  print(l);

  final Map<String, int> ss = {
    'x': 0,
    'y': 0,
  };

  // print(ss['x']);
  // int a = ss['x']!;
  // ss['x'] = a + 1;
  // print(ss['x']);
  // final b = ss.values.
  final b = ss.values.every((e) => e == 0);
  // print(b);
  // print(ss.values);
  // print(ss.values.runtimeType);
}
