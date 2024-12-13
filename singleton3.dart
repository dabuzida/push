void main() {
  const String rwe = '';
  Logger ww = Logger('');
}

class Planet {
  static final String wwewrwe = '';
  // const String wwewrwe2 = '';
  static const String wwewrwe3 = '';
  static final String wwewrwe4 = '';
  static final String wwewrwe5 = '';
}

class Logger {
  String? name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }
  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}
