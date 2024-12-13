import 'dart:math';

void main() {
  // _makeOffsiteScore_and_invalid_Date();
  _makeOffsiteScore_and_valid_Date();

  // String text = '[123]';
  // print(text.substring(1, text.length - 1));
}

void _makeOffsiteScore_and_invalid_Date() {
  List<String> list = <String>[];
  for (int i = 0; i < 50; i++) {
    num score = Random().nextInt(40); // 0~30
    // num score = 0.5;

    String year = (Random().nextInt(140) + 1910).toString();
    String month = Random().nextInt(40).toString();
    String day = Random().nextInt(40).toString();

    month = month.padLeft(2, '0');
    day = day.padLeft(2, '0');
    String result = '$score-$year$month$day';
    list.add(result);
  }
  // print(list);

  print(list.toString().substring(1, list.toString().length - 1));
}

void _makeOffsiteScore_and_valid_Date() {
  List<String> list = <String>[];
  for (int i = 0; i < 50; i++) {
    num score = Random().nextInt(31); // 0~30
    // num score = 0.5;

    String year = (ranInt(140) + 1910).toString();
    String month = (ranInt(12) + 1).toString();
    String day = (ranInt(28) + 1).toString();

    month = month.padLeft(2, '0');
    day = day.padLeft(2, '0');
    String result = '$score-$year$month$day';
    list.add(result);
  }
  // print(list);
  print(list.toString().substring(1, list.toString().length - 1));
}

int ranInt(int n) {
  return Random().nextInt(n);
}
