void main() {
  // print(d3 == d4);
  // print(identical(d3, d4));
  // print(d3.compareTo(d4));
  Count xx = Count.one;
  print(xx.value);
}

enum Count {
  zero('00'),
  one('01'),
  two('02'),
  three('03'),
  ;

  const Count(this.value);

  final String value;
}
