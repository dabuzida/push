void main() {
  xxx(
    callback: () => print(2),
  );
}

Future<void> xxx({
  String? height,
  void Function()? callback,
}) async {
  if (callback == null) {
    Future<void>.delayed(
      const Duration(seconds: 1),
      () {
        print(1);
      },
    );
  } else {
    callback();
  }
//
  // return true;
}
