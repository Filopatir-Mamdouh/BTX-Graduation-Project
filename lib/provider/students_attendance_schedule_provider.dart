import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Student_Attendance_Affairs/subject_attendance_model.dart';

class StudentsAttendanceScheduleProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];
  String name = "Ahmed khaled hasan";
  int code = 3453453;
  List<SubjectAttendanceModel> subjectsAttendance = [
    SubjectAttendanceModel(
      subjectName: "مادة 1",
      subjectAttendance: [true, false, true, true, false, true, true, false],
    ),
    SubjectAttendanceModel(
      subjectName: "مادة 2",
      subjectAttendance: [true, false, false, true, false, true, true, false],
    ),
    SubjectAttendanceModel(
      subjectName: "مادة 3",
      subjectAttendance: [true, false, false, true, false, true, true, false],
    ),
    SubjectAttendanceModel(
      subjectName: "مادة 4",
      subjectAttendance: [true, false, false, true, false, true, true, false],
    ),
    SubjectAttendanceModel(
      subjectName: "مادة 5",
      subjectAttendance: [true, false, false, true, false, true, true, false],
    ),
    SubjectAttendanceModel(
      subjectName: "مادة 6",
      subjectAttendance: [true, false, false, true, false, true, true, false],
    ),
  ];
  // List<List<bool>> subjectsAttendance = [
  //   [true, false, false, true, false, true, true, false],
  //   [true, false, false, true, false, true, true, false],
  //   [true, false, false, true, false, true, true, false],
  //   [true, false, false, true, false, true, true, false],
  //   [true, false, false, true, false, true, true, false],
  //   [true, false, false, true, false, true, true, false],
  //   [true, false, false, true, false, true, true, false],
  // ];
  void changeLevel({required String selectedLevel}) {
    level = selectedLevel;
    notifyListeners();
  }

  void changeDepartment({required String selectedDepartment}) {
    department = selectedDepartment;
    notifyListeners();
  }

  void changeDivision({required String selectedDivision}) {
    division = selectedDivision;
    notifyListeners();
  }

  void changeSubjectAttendance(
      {required int subjectIndex, required int attendanceIndex}) {
    subjectsAttendance[subjectIndex].subjectAttendance[attendanceIndex] =
        !subjectsAttendance[subjectIndex].subjectAttendance[attendanceIndex];
    notifyListeners();
  }
}
