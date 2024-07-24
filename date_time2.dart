void main() {
  final growableList = <String>['B', 'B', 'B']; // Creates growable list.

  final indexA = growableList.indexOf('A'); // -1 (not in the list)
  final firstIndexB = growableList.indexOf('B'); // 1
  final lastIndexB = growableList.every((element) => element == 'B');

  print(indexA);
  print(firstIndexB);
  print(lastIndexB);
  print('asdfq234rfawwaresgar'.length);
}
