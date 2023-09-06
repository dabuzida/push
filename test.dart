void main() {
  String str = 'make';
  String str2 = 'make';

  print(str == str2);
  print(str.compareTo(str2));
  print(identical(str, str2));
  ReqReply reply = ReqReply.OverLimit;

  print(reply); // over_limit
  print(reply.index); // over_limit
  print(reply.name); // over_limit
  print(reply.name.runtimeType); // over_limit
}

enum ReqReply {
  Done, // error==null 성공
  Unauthorized, // 'unauthorized' 인증 실패
  Error, // 'error' 처리된 에러. 나중에 재시도
  Duplicate, // 'duplicate' 중복
  NotFound, // 'not_found' 못찾음
  Invalid, // 'invalid' 값 에러
  ServerError, // 'server_error' 서버 미처리 에러
  OverLimit, // 'over_limit' 초과
}

enum CountryCode {
  unitedStates('1', 'UnitedStatesCode'),
  russia('7', 'RussiaCode'),
  southAfrica('27', 'SouthAfricaCode'),
  belgium('32', 'BelgiumCode'),
  france('33', 'FranceCode'),
  spain('34', 'SpainCode'),
  italy('39', 'ItalyCode'),
  romania('40', 'RomaniaCode'),
  unitedKingdom('44', 'UnitedKingdomCode'),
  sweden('46', 'SwedenCode'),
  norway('47', 'NorwayCode'),
  poland('48', 'PolandCode'),
  germany('49', 'GermanyCode'),
  peru('51', 'PeruCode'),
  argentina('54', 'ArgentinaCode'),
  brazil('55', 'BrazilCode'),
  chile('56', 'ChileCode'),
  newZealand('64', 'NewZealandCode'),
  japan('81', 'JapanCode'),
  southKorea('82', 'SouthKoreaCode'),
  china('86', 'ChinaCode'),
  india('91', 'IndiaCode'),
  pakistan('92', 'PakistanCode'),
  bulgaria('359', 'BulgariaCode'),
  belarus('375', 'BelarusCode'),
  ukraine('380', 'UkraineCode'),
  czechRepublic('420', 'CzechRepublicCode'),
  uruguay('598', 'UruguayCode'),
  australia('672', 'AustraliaCode'),
  hongKong('852', 'HongKongCode'),
  ;

  const CountryCode(this.countryCodeDigit, this.translationKey);

  final String countryCodeDigit;
  final String translationKey;

  String get countryCode {
    return '+$countryCodeDigit';
  }

  static CountryCode? make({required String code}) {
    for (final CountryCode countryCode in CountryCode.values) {
      if (countryCode.countryCode == code) {
        return countryCode;
      }
    }

    return null;
  }
}
