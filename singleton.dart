void main() {
  _mySingleton();

  UserData userData = UserData.coffee();
  UserData userData2 = UserData();
}

void _mySingleton() {
  print(1);
  print(Singleton().set('key', 99));
  print(2);
  print(Singleton().get('key'));
  print(3);

  Singleton dataList1 = Singleton();

  dataList1.set('Job1', 'Student');

  dataList1.set('Name1', 'Andrew');

  Singleton dataList2 = Singleton();

  dataList2.set('Job2', 'Developer');

  dataList2.set('Name2', 'Paul');
  print(Singleton().hashCode);
  print(dataList1.hashCode);
  print(dataList2.hashCode);

  if (dataList1 == dataList2) {
    print("같은 인스턴스입니다.");
  }

  print("dataList1 정보");

  print("Job1: ${dataList1.get('Job1')}, Name1: ${dataList1.get('Name1')}");

  print("Job2: ${dataList1.get('Job2')}, Name2: ${dataList1.get('Name2')}");

  print("dataList2 정보");

  print("Job1: ${dataList2.get('Job1')}, Name1: ${dataList2.get('Name1')}");

  print("Job2: ${dataList2.get('Job2')}, Name2: ${dataList2.get('Name2')}");
}

class Singleton {
  static final Map<String, dynamic> _data = <String, dynamic>{}; // 싱글톤 클래스에 담을 변수

  static final Singleton _singletonData = Singleton._internal(); // 생성자를 private로 제한하기 위해 선언

  factory Singleton() => _singletonData; // 단일 인스턴스를 리턴하기 위해 factory 사용

  Singleton._internal() {
    // 인스턴스를 생성하여 실행을 위한 코드를 여기에 삽입
    print("싱글톤 클래스의 인스턴스가 생성되었습니다.");
  }
  String? name;
  set(String key, dynamic data) => _data[key] = data;

  get(String key) => _data[key];
}

class UserData {
  UserData();
  UserData.apple();
  UserData.banana();
  UserData.coffee();
  UserData.data({required bool sss}) {
    id = sss.toString();
  }

  // factory UserData.down() => UserData();
  factory UserData.empty({required bool sss}) {
    if (sss) {
      return UserData.apple();
    }
    return UserData2(); // subclass
  }

  UserData.faker() {}

  String? id;
}

class UserData2 extends UserData {
  String? id;

  UserData2() : super.faker();
}
