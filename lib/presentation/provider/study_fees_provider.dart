import 'package:flutter/material.dart';

class StudyFeesProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];
  int code = 456789665;
  String name = "احمد خالد حسن";
  int permission_number = 32425;
  String permission_date = "22/5/2023";
  int recepit_number = 387423;
  String date_of_payment = "24/6/2022";
  int total = 7000;
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
