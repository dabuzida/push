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

  // x ??= 1;
  print(x ?? 2);
}
