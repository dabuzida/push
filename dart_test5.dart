import 'dart:convert';
import 'dart:io';

import 'dart:math';
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

// Synchronous vs Asynchronous, Future, Duration, async, await
void main() async {
  /* 1.Synchronous vs Asynchronous 비교 */
  _123();

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

  
}

