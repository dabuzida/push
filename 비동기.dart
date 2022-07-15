void main() {
  final x = _beta();
  print(x);
  print(x.runtimeType);
}

dynamic _beta() async {
  String? x;
  Duration time = Duration(seconds: 2);
  return await Future.delayed(time, () {
    print(x);
  });
}
