import 'dart:convert';
import 'dart:io';

void main() {
  Map a = {
    'name': '수정',
    'age': '11',
  };
  print(a);
  print(a['name']);
  // print('${a.age}'); x

  List b = [
    1,
    2,
    4,
    'messi',
    {
      'address': "경기도",
      'tel': '0202020',
    }
  ];
  print(b);
  print(b[4]);
  // print(b[4].tel); x

  Map<String, dynamic> c = {
    'name': 'Sung',
    'age': 12,
    'tel': '0303030',
    'home': null,
  };
  print(c);
}
