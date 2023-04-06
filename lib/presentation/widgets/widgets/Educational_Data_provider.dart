import 'package:flutter/material.dart';

class EducationalDataProvider with ChangeNotifier {
  String? department;
  List<String> departments = ["1", "2", "3", "4"];

  int code = 20190223;
  String subject = "Mobile programming";
  String Section = "mechatronics";
  String year = "الرابعه";
  String Lecturer = "احمد خالد حسن";
  int total = 20;
  int lab = 30;
  int turtual = 20;
  int lecture = 20;
  int credit = 20;
  void changeDepartment({required String selectedDepartment}) {
    department = selectedDepartment;
    notifyListeners();
  }
}
