void main() {
  print('start');

  _xx();
  print('finish');
}

void _xx() {
  print('@@@');
  for (int i = 4; i < 10; i++) {
    print(i);
  }
  print('###');
}
