import 'package:flutter/material.dart';

class StudentsAttendanceProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? subject;
  List<String> subjects = ["1", "2", "3", "4"];

  int code = 201902004;
  String name = "احمد خالد حسن ابوالليل";
  String Lectures = "";
  String number_Of_Lectures_Mobile = "1  2 3 4 5 6 7 8 9 10 11 12";
  String number_Of_Lecture_Desk =
      "1     2     3     4      5     6     7   8     9     10     11     12";
  void changeLevel({required String selectedLevel}) {
    level = selectedLevel;
    notifyListeners();
  }

  void changeDepartment({required String selectedDepartment}) {
    department = selectedDepartment;
    notifyListeners();
  }

  void changeSubject({required String selectedSubject}) {
    subject = selectedSubject;
    notifyListeners();
  }
}
