void main() {
  print(1);
}

enum PersonJob {
  student,
  developer,
}

abstract class Person {
  String getName();
  String getJobName();

  factory Person(PersonJob job) {
    switch (job) {
      case PersonJob.student:
        return Strudent();
      case PersonJob.developer:
        return Developer();
    }
  }
}

class Strudent implements Person {
  final String name = 'Andrew';
  final String jobName = 'High School Student';
  @override
  String getName() {
    return name;
  }

  @override
  String getJobName() {
    return jobName;
  }
}

class Developer implements Person {
  final String name = 'John';
  final String jobName = 'Frontend Developer';
  @override
  String getName() {
    return name;
  }

  @override
  String getJobName() {
    return jobName;
  }
}

class School {
  String? schoolName;
  String? location;
  int? numberOfStudents;

  School.a2(this.schoolName, this.location, this.numberOfStudents);

  factory School() {
    return School.a2('schoolName', 'location', null);
  }
}

class Car {
  String? name;
  String? birthyear;
  String? aa;

  Car(this.aa);
  Car.a({this.aa});
}
