void main() {
  // final List<String> ww = <String>['가렌', '갈리오', '개리', '그레이브즈', '그웬', '기드', '까탈리나', '카서스', '카이사', '카르마', '카사딘', '카타리나', '카직스', '칼리스타', '케넨', '케일', '케인', '코르키', '크산드라', '클레드', '킨드레드', '키아나', '타릭', '탈리야', '탈론', '트런들', '트위치', '티모', '팝피', '프레스코', '피즈', '하이머딩거', '헤카림', '호이', '후르르크'];

  // String rr = '';
  // for (var element in ww) {
  //   rr += element;
  // }

  // final List<String> ss = rr.split('');
  // final Set<String> qq = ss.toSet();
  // final ff = qq.toList();
  // ff.sort();
  // print(ff);

  // final String aa = '1999-11-11';
  // print(aa);
  // final String bb = aa.replaceAll('-', '@');
  // final String cc = aa.replaceAll(RegExp(r'-'), 'é');

  // print(aa);
  // print(bb);
  // print(cc);
  // String animals = r'낙타 @고래 $상어。너구리、오소리,여우、늑대 ';
  // String animals = r'고양이@개$사자。호랑이、코끼리@기린$';
  // String animals = r'원숭이。늑대、토끼@사슴$팬더。돌고래、말';
  // String animals = r'고양이@개$@$@$@사자。、호랑이、코끼리@、기린$、、。。。';
  String animals = r'。。。원숭이。늑대、토끼、@사슴、$팬더、。、돌고래、말、。、。、。、。';

  print(animals);
  for (final STTManualSeparator element in STTManualSeparator.values) {
    animals = animals.replaceAll(element.mark, ',');
    print(animals);
  }

  final List<String> listWithEmpty = animals.split(',');

  final List<String> listWithoutEmpty = <String>[];
  for (final String element in listWithEmpty) {
    if (element.trim().isNotEmpty) {
      listWithoutEmpty.add(element.trim());
    }
  }
  final String result = listWithoutEmpty.join(', ');

  print(result);

  // final String result2 = ['aaa', 'bbb'].join(', ');
  // print(result2);
  // print(result2.length);
  print(null == true);
  print(null == false);
  print(null == null);
}

enum STTManualSeparator {
  at('@'),
  dollar(r'$'),
  period('。'), // 일본, 중국에서 쓰이는 마침표
  comma('、'), // 일본, 중국에서 쓰이는 쉼표
  ;

  const STTManualSeparator(this.mark);

  final String mark;
}
