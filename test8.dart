void main() async {
  print(1);

  await _xx();
  print(2);
}

Future<void> _xx() async {
  print('@@@');
  Future<void>.delayed(const Duration(seconds: 2));
  print('###');
}
