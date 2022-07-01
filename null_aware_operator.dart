void main() {
  OlympicAthlete athlete = OlympicAthlete();
  String aa = athlete.name ?? "Tyson Gay";
  print(aa);
  athlete.nationality = "U.S.A";
  athlete.number = 1100;
  athlete.field = Field();
  athlete.field?.event ?? "100m";
  print(athlete.field!.event);

  // athlete.field._awardHistory = ;
  // OlympicAthlete athlete2;
  // print(athlete);
}

class OlympicAthlete {
  // 올림픽 선수
  String? name;
  String? nationality;
  int? number; // 국적에 따라 1~20은 미국 21~43은 영국 등등 식으로
  Field? field; // 종목
  PysicalCondition? _pysicalCondition; // 육체조건
  Identity? a; //개인신상
}

class Identity {
  String? fullName;
  String? nationality;
  String? DOB; // date of birth
}

class Field {
  String? sport; // 종목명 ex달리기
  String? event; // 종목상세 ex 100m 200m
  int? rank;
  String? record;
  AwardHistory? _awardHistory; // 수상이력
}

class AwardHistory {
  // List, map으로    2002년도 기록 2006년도 기록
  //[{'2004':'9.99'}, {'2006':'9.87'}, ...]
  List<Map<String, int>> olympic = []; //올림픽
  List<Map<String, int>> worldChampionship = []; //세계선수권
}

class PysicalCondition {
  String? height;
  String? weight;
  int? bodyAge; // 태어난 날부터 며칠째인지
}
