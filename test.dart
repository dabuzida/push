void main() {
  String str = 'make';
  String str2 = 'make';

  print(str == str2);
  print(str.compareTo(str2));
  print(identical(str, str2));
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
