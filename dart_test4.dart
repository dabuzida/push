import 'dart:convert';
import 'dart:io';

import 'dart:math';

// Synchronous vs Asynchronous, Future, Duration, async, await
void main() async {
  /* 1.Synchronous vs Asynchronous 비교 */
  // _123();

  /* 2.비동기적으로 처리한 후, 처리결과를 출력 */
  // Future.delayed(const Duration(seconds: 1), () => print('hi'));

  /* 3. 시나리오: 동기적으로 작업하는 와중에 비동기적으로 작업을 시켜놓고 나중에 그 결과를 동기적 작업에 사용하는 경우.
      비동기적 처리로 변수에 값 할당 >> sync 2초 적용 >> 변수를 출력 */
  // String? vv;
  // print(vv); // null
  // print(Future.delayed(const Duration(seconds: 1), () {
  //   vv = 'coffee';
  //   return vv;
  // })); // Instance of 'Future<String?>': async처리로 1초지연 후 callback이 실행되어 vv가 리턴되고 print될 예정인데, print는 sync이므로 비동기 처리되는 동안 값이 없어서
  // print(vv); // null 아직도 vv는 값 할당x
  // await Future.delayed(const Duration(seconds: 2)); // 위의 비동기처리에서 vv에 값 할당을 보장할수 있게 await을 걸어 동기(sync)처리 적용
  // print(vv); // coffee

  /* 4. 비동기 함수를 이용하는 경우 */
  // var _receipt = receipt(); // Instance of 'Future<int>': 동기적으로 할당받는 시점에 receipt()는 1초 지연중이다
  // var _receipt = await receipt(); // 비동기작업을 동기적 처리하므로(await) _receipt에 81이 할당됨
  // print(_receipt);

  // print(createOrderMessage());

  // Future<String> aaa = createOrderMessage();
  //print(aaa.runtimeType);
  // print(await aaa);

  // String bbb = await createOrderMessage();
  //print(bbb.runtimeType);
  // print(bbb);

  // xixix.then(
  //   (value) {
  //     print('bbbbb');
  //     print(value);
  //   },
  // );
  // print(xixix);
  // print('aaaaa');
  // print(xixix);

  // print(await Future.delayed(Duration(seconds: 0), () => fetchUserOrder()));
  // print(await fetchUserOrder());

  // final aaa = receipt();
  // print(aaa);

  String jsonString = '''
      {
        "name" : "bebe",
        "age" : 26,
        "is_man" : true
      }
      ''';
  print('i: $jsonString');
  Map<String, dynamic> jsonObject = jsonDecode(jsonString);
  // Map<String, dynamic> jsonData = jsonDecode(jsonString);
  print('ii: $jsonObject');
  // String xi = json.encode(jsonData);
  // print(xi);

  // jsonData.forEach((key, value) {
  //   print('$key: $value');
  // });

  User jsonInstance = User.ivi(jsonObject);
  print('iii: $jsonInstance');
  // User user = User.ivi(jsonData);
  // print(user);

  print(jsonInstance.name);

  String jsonListString = '''
[
{"name" : "kim",
"age":23,
"is_man" : true
},
{"name":"lee",
"age":33,"is_man" : true}
]''';
  List jsonObjectList = jsonDecode(jsonListString);
  List<User> jsonInstanceList = jsonObjectList.map((e) => User.ivi(e)).toList();
  // print(jsonListString);
  // print(jsonObjectList);
  // print(jsonInstanceList);

  List xu = [];
  List xa = [];
  List xb = [];
  for (int i = 0; i < 10; i++) {
    xu.add(Random().nextInt(10));
  }
  // print(xu);
  // xa = xu.sublist(0,1);
  // xb = xu.sublist(4, xu.length);
  // print(xu);
  // print(xa);
  // print(xb);
  // List bl = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  // print(bl);
  // bl.removeAt(2);
  // print(bl);
  // bl.insert(2, 111);
  // print(bl);
  List bb = ['bn-IN-Wavenet-B', 'fr-CA-Wavenet-C', 'en-US-Wavenet-C', 'en-AU-Wavenet-C', 'en-US-Standard-C', 'ja-JP-Wavenet-C'];
  print(bb);
  List bi = bb.sublist(1, 3);
  print(bb);
  print(bi);

  List bk = [1, 2, 3, 4, 5, 6, 7, 234234, 1242314, 4544, 777, 8889];
  print(bk);
  List bs = bk.sublist(1, 5);
  print(bk);

  print(bs);
  // bb.sort();
  // print(bb);
  // List bc = ['sdfsdfsd', ...bb];
  // print(bc);
  // List bd = List.from(bc);
  // print(bd);
  // print(bd.indexOf('sdfsdfsd'));
  // print('sdfsdf'.substring(1, 3));

  Map _menuState = {
    'cursor_in': [1],
    'cursorIn': [4],
    'cursor_out': [2],
  };
  print(_menuState['cursor_in']);
  print(_menuState['cursorIn']);
}

enum MediaQuerySize { S, M, L }

class User {
  late String name;
  late int age;
  late bool isMan;
  /*  User({
    required this.name,
    required this.age,
    required this.isMan,
  }); */
  // User({required String name, required int age, required bool isMan}) {
  //   this.name = name;
  //   this.age = age;
  //   this.isMan = isMan;
  // }

  // factory User.fromJson(Map<String, dynamic> jsonData) {
  //   return User(
  //     name: jsonData['name'],
  //     age: jsonData['age'],
  //     isMan: jsonData['is_man'],
  //   );
  // }

  User.ivi(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    isMan = json['is_man'];
  }
}

Future<int> receipt() async {
  Stopwatch sw = Stopwatch();
  sw.start();
  print('start ${sw.elapsed}');
  final bb = await Future.delayed(Duration(seconds: 2), () {
    return 81;
  });
  print('end ${sw.elapsed}');
  print('=>${bb.runtimeType}');
  return bb;
}

Future<String> fetchUserOrder() => Future.delayed(const Duration(seconds: 2), () => 'Large Latte');
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

void _123() {
  one();
  two();
  three();
}

void one() {
  String i = '1';
  print(i);
}

void two() {
  // bool _switch = true; // synchronous
  bool _switch = false; // asynchronous
  String i = '2';

  if (_switch) {
    // synchronous
    Duration delay = Duration(seconds: 2);
    sleep(delay);
    print(i);
  } else if (!_switch) {
    // asynchronous
    Future.delayed(Duration(seconds: 2), () {
      print(i);
    });
  }
}

void three() {
  String i = '3';
  print(i);
}
