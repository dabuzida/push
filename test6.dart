import 'dart:math';

enum Xx { agree, deny, noneInfo }

int get qq => 11;

int get pp {
  final x = 1;
  return x;
}

void main() {
  final aa = [1, 2, 3, 4, 5];

  print(qq);
  print(pp);
  Map xu = {
    Xx.agree: 11,
    Xx.agree.toString(): 11,
    Xx.deny.toString(): 21,
    Xx.noneInfo.toString(): 33,
    null: 33,
  };

  List<dynamic> x = [1, 2, 3, null];
  print(x);
  // print(xu[null]);
  // int as = xu[null];
  // xu[null] = as + 1;
  // print(xu[null]);

  // print(xu[1]);

  // print(xu);
  // print(xu.keys);
  // print(xu.keys.first);
  // print(xu['Xx.agree']);
  // print(xu['xx.agree']);
  // print(xu['agree']);

  // print(ss['x']);
  // int a = ss['x']!;
  // ss['x'] = a + 1;
  // print(ss['x']);
  // final b = ss.values.
  // print(b);
  // print(ss.values);
  // print(ss.values.runtimeType);
}
