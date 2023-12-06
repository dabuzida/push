import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() async {
  a();
  b();
  c();
  await d();
  e();
}

Future<void> a() async {
  print(1);
}

Future<void> b() async {
  for (int i = 0; i < 10000000000; i++) {
    //
  }
  print(2);
}

Future<void> c() async {
  for (int i = 0; i < 1000; i++) {
    //
  }
  print(3);
}

Future<void> d() async {
  await Future<void>.delayed(Duration(seconds: 1), () {
    print(4);
  });
}

Future<void> e() async {
  print(5);
}

Future<void> f() async {
  //
}
Future<void> g() async {
  //
}
Future<void> h() async {
  //
}
