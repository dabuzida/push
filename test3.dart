enum AlzwinLanguage {
  ko('ko', '한국어'),
  en('en', 'English'),
  ja('ja', '日本語'),
  quantity('', ''),
  ;

  const AlzwinLanguage(
    this.code,
    this.localizedName,
  );

  final String code;
  final String localizedName;
}

void main() {
  int? x;

  if (x == null || x == 1) {
    print(1);
  }
  print(2);
  // example();

  // Future future = Future.delayed(
  //   Duration(milliseconds: 0),
  //   () {
  //     print(1);
  //   },
  // );

  // Future future2 = Future.delayed(
  //   Duration(milliseconds: 1000),
  //   () {
  //     print(2);
  //   },
  // );

  // Future future3 = Future.delayed(
  //   Duration(milliseconds: 2000),
  //   () {
  //     print(3);
  //   },
  // );

  // for (int i = 0; i < 50; i++) {
  //   Future.delayed(
  //     Duration(milliseconds: i * 500),
  //     () {
  //       print(i);
  //     },
  //   );
  // }

  // final List xx = [];
  // xx.add(Future.delayed(
  //   const Duration(seconds: 1),
  //   () {
  //     print('x');
  //   },
  // ));

  // xx.add(Future.delayed(const Duration(seconds: 2), () {
  //   print('y');
  // }));

  // Future.delayed(
  //   const Duration(seconds: 1),
  //   () {
  //     print('x');
  //   },
  // );

  // Future.delayed(
  //   const Duration(seconds: 2),
  //   () {
  //     print('y');
  //   },
  // );
}

example() async {
  await Future.delayed(
    Duration(milliseconds: 500),
    () {
      print(1);
    },
  );

  Future.delayed(
    Duration(milliseconds: 0),
    () {
      print(2);
    },
  );
}
