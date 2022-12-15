void main() {
  // cascade = .. = double dot
  List list = [];
  List list2 = [];
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);

  list2
    ..add(1)
    ..add(2)
    ..add(3)
    ..add(4);
  print(list);
  print(list2);
}

class Power {
  Power({this.have, this.sell, this.change});
  bool? have;
  bool? sell;
  bool? change;
}
