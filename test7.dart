void main() {
  final Power? myPower = Power(have: true);
  print(myPower);
  final terrestrial = {
    1: 'Mercury',
    2: 'Venus',
    3: 'Earth',
    // 4: myPower,
  };
  terrestrial.removeWhere((key, value) => value == null);
  // myPower!.toJson()..removeWhere((String key, dynamic value) => value == null);
  // print(terrestrial); // {1: Mercury, 2: Venus}

  // print(terrestrial
  //   ..entries
  //   ..keys.);
}

class Power {
  Power({this.have, this.sell, this.change});
  bool? have;
  bool? sell;
  bool? change;
}
