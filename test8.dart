void main() {
  // print('start');

  // _xx();
  // print('finish');

  print(AlzWINTestClass.call.name);
  print(AlzWINTestClass.call.name.runtimeType);
}

void _xx() {
  print('@@@');
  for (int i = 4; i < 10; i++) {
    print(i);
  }
  print('###');
}

enum AlzWINTestClass {
  call('전화'), // 전화검사, 개인정보동의
  screen('앱/웹'), // 문자링크, (회원, 비회원) * (바로시작, 링크생성)
  upload('업로드'), // 키오스크, 공개검사링크
  ;

  const AlzWINTestClass(this.serverValue);

  final String serverValue;

  // String get translationKey {
  //   switch (this) {
  //     case required:
  //       return 'required';
  //     case optional:
  //       return 'optional';
  //   }
  // }
}
