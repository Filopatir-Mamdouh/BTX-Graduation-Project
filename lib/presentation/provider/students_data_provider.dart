import 'package:flutter/material.dart';

class StudentsDataProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];

  int code = 4567;
  String name = "احمد خالد حسن";
  int ID_Number = 34242454645656;
  int phone_Number = 0123134543566;
  String Entry_Status = "مستجد تقدير";
  String Qualification = "ثانوي";
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
