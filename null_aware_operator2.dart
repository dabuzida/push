import 'classes.dart';

void main() {
  Alpha i = Alpha();

  var output = i.beta?.gamma?.delta?.epsilon?.zeta.theta?.t ?? '>> null <<';

  print(output);

// classes.dart파일의 Beta class를 변경함에 따라 output이 달라짐
}
