import 'dart:math';

void main() {
  List<Map<String, String>> list = [
    {
      'x': '1',
    },
    {
      'y': '2',
    },
    {
      'z': '3',
    },
  ];
  for (int i = 0; i < list.length; i++) {
    print(list[i].keys);
    print(list[i].keys.first);
    print(list[i].keys.last);
    print(list[i].keys.first.runtimeType);
    print(list[i].keys.runtimeType);
    print(list[i].values);
    print(list[i].values.first);
    print(list[i].values.iterator);
  }
}
