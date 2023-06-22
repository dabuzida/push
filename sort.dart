void main() {
  final List<String> ko = <String>['강아지', '악어', '코끼리', '독수리'];
  final List<String> en = <String>['dog', 'cat', 'whale', 'eagle'];

  // print(ko);
  // print(en);
  // ko.sort((a, b) => a.compareTo(b));
  // en.sort((a, b) => a.compareTo(b));
  // print(ko);
  // print(en);

  final List<int> xx = <int>[2, 5, 2, 6, 34, 756, 1];
  print(xx);
  xx.sort((a, b) => a.compareTo(b));
  print(xx);
}
