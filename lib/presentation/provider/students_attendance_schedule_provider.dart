import 'package:flutter/material.dart';

class StudentsAttendanceScheduleProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];
  List<List<bool>> subjectsAttendance = [
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false],
    [true, false, false, true, false, true, true, false]
  ];
  int code = 12345667;
  String name = " حسن احمد خالد";

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
      {required int firstIndex, required int secondIndex}) {
    if (subjectsAttendance[firstIndex][secondIndex]) {
      subjectsAttendance[firstIndex][secondIndex] = false;
    } else {
      subjectsAttendance[firstIndex][secondIndex] = true;
    }
    notifyListeners();
  }
}
