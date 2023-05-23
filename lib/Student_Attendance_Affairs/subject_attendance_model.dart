class SubjectAttendanceModel extends SubjectAttendance {
  SubjectAttendanceModel({
    required super.subjectName,
    required super.subjectAttendance,
  });
}

class SubjectAttendance {
  final String subjectName;
  List<bool> subjectAttendance;

  SubjectAttendance({
    required this.subjectName,
    required this.subjectAttendance,
  });
}
