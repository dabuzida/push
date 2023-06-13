void main() {
  final List<String> ko = <String>['강아지', '악어', '코끼리', '독수리'];
  final List<String> en = <String>['dog', 'cat', 'whale', 'eagle'];

  print(ko);
  print(en);
  ko.sort((a, b) => a.compareTo(b));
  en.sort((a, b) => a.compareTo(b));
  print(ko);
  print(en);
}
