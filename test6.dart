enum Xx { agree, deny, noneInfo }

void main() {
  Map xu = {
    Xx.agree: 11,
    Xx.agree.toString(): 11,
    Xx.deny.toString(): 21,
    Xx.noneInfo.toString(): 33,
  };
  print(xu);
  print(xu.keys);
  print(xu.keys.first);
  print(xu['Xx.agree']);
  print(xu['xx.agree']);
  print(xu['agree']);

  // print(ss['x']);
  // int a = ss['x']!;
  // ss['x'] = a + 1;
  // print(ss['x']);
  // final b = ss.values.
  // print(b);
  // print(ss.values);
  // print(ss.values.runtimeType);
}
