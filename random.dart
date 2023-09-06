import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print(makeString(5));
  print(makeString(11));
  print(makeImage());
  print(makeUrl());
}

// Color makeColor() {
//   return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
// }

String makeString(int length) {
  return List<String>.generate(length, (_) => 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'[Random().nextInt('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'.length)]).join();
}

String makeImage() {
  final int id = Random().nextInt(1085); // 0 ~ 1084
  final List<int> sizeList = <int>[50, 100, 150, 200, 250, 300];
  final int size = sizeList[Random().nextInt(sizeList.length)];
  return 'https://picsum.photos/id/$id/$size';
}

String makeUrl() {
  const List<String> urlList = <String>[
    'https://dict.naver.com/',
    'https://papago.naver.com/',
    'https://open-pro.dict.naver.com/_ivo/home',
    'https://dict.naver.com/userstranslate/',
    'https://terms.naver.com/',
    'https://www.naver.com/',
    'https://www.google.com/',
    'https://www.google.com/?gl=us&hl=en&pws=0&gws_rd=cr',
    'https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&sq=&o=&q=%EB%8B%AC%EB%A0%A5',
    'https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=%EB%82%A0%EC%94%A8',
    '',
  ];

  return urlList[Random().nextInt(urlList.length)];
}
