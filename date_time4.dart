void main() {
  final DateTime now = DateTime.now();
  print(now);

  final int aa = DateTime.fromMillisecondsSinceEpoch(now.millisecondsSinceEpoch).add(const Duration(days: 1)).millisecondsSinceEpoch - 1;
  print(aa);
  print(DateTime.fromMillisecondsSinceEpoch(aa));
  print(DateTime.fromMillisecondsSinceEpoch(1705417199999));
  print(DateTime.fromMillisecondsSinceEpoch(1706194799999));

  print(DateTime(2024, 1, 7));

  print('aA'.compareTo('aA') == 0);
  print(ReqReply.Duplicate.);
}

enum ReqReply {
  Done, // error==null 성공
  Unauthorized, // 'unauthorized' 인증 실패
  Error, // 'error' 처리된 에러. 나중에 재시도
  Duplicate, // 'duplicate' 중복
  NotFound, // 'not_found' 못찾음
  Invalid, // 'invalid' 값 에러
  ServerError, // 'server_error' 서버 미처리 에러
  OverLimit, // 'over_limit' 초과
}
