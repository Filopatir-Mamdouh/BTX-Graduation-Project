import 'package:flutter/material.dart';

class StudentsAcademicResultsProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];

  int code = 08978698;
  String name = "  حسن احمد خالد";
  int subject1 = 200;
  int subject2 = 200;
  int subject3 = 200;
  int subject4 = 200;
  int subject5 = 200;
  int subject6 = 200;

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
}
