import 'package:flutter/material.dart';

class YearResultProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];

  String subject = "flutter";
  int degree = 100;
  String grade = "جيد جدا";
  int total = 100;
  int total_Grade = 100;
  String persantage = "99%";
  void changeLevel({required String selectedLevel}) {
    level = selectedLevel;
    notifyListeners();
  }
}
