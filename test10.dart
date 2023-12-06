import 'dart:math';

void main() {
  // xx(71, 125, 71, 156, 99, 67, 99, 67, 140, 85, 140, 149, 200, 160, 153, 160);
  // xx(24, 104, 24, 89, 59, 45, 39, 39, 102, 91, 102, 183, 80, 82, 80, 82);
  // xx(68, 105, 68, 86, 57, 60, 57, 60, 106, 155, 106, 291, 81, 50, 81, 50);
  // xx(57, 120, 57, 264, 59, 69, 86, 69, 182, 152, 171, 222, 155, 234, 121, 235);
  // xx(86, 125, 87, 156, 101, 67, 63, 67, 150, 85, 152, 149, 134, 174, 156, 161);
  // xx(24, 160, 24, 138, 56, 61, 62, 62, 164, 166, 164, 192, 136, 162, 93, 167);
  // xx(24, 104, 24, 191, 56, 51, 59, 51, 117, 166, 117, 192, 134, 142, 80, 142);
  // xx(63, 105, 63, 119, 59, 71, 84, 72, 152, 152, 152, 185, 134, 180, 121, 181);
  // xx(24, 47, 24, 47, 39, 25, 39, 25, 100, 86, 100, 86, 50, 48, 50, 48);
}

void xx(int a, int b, int c, int d, int e, int f, int g, int h, int p, int q, int r, int s, int w, int x, int y, int z) {
  print('spacePhonePortrait: DiagnosisPaddingFlex(left:    $a, top: $b, right: $c, bottom: $d),');
  print('spacePhoneLandscape: DiagnosisPaddingFlex(left:   $e, top: $f, right: $g, bottom: $h),');
  print('spaceTabletPortrait: DiagnosisPaddingFlex(left:   $p, top: $q, right: $r, bottom: $s),');
  print('spaceTabletLandscape: DiagnosisPaddingFlex(left:  $w, top: $x, right: $y, bottom: $z),');
  print('spaceDesktopPortrait: DiagnosisPaddingFlex(left:  $p, top: $q, right: $r, bottom: $s),');
  print('spaceDesktopLandscape: DiagnosisPaddingFlex(left: $w, top: $x, right: $y, bottom: $z),');
}
