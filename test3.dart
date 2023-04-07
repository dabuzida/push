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
  // null operator: ??=

  int? x;
  int? y;

  x ??= 11;
  // if (x != null) {
  if (x == null) {
    y = 13;
  }

  y ??= 15;

  print(x);
  print(y);
}
