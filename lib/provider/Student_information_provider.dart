import 'package:flutter/material.dart';

class StudentsInformationsProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];
  int code = 12345678;
  String name = "احمد خالد ";
  int MidTerm = 20;
  int Final = 200;
  int Year_works = 40;
  int practice = 50;
  int Phone_Number = 34568656456;

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
