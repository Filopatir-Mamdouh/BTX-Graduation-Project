import 'package:flutter/material.dart';

class LecturersAttendanceScheduleProvider with ChangeNotifier {
  int selectedScheduleType = 0;
  String Day = "السبت";
  String Date = "20/5/2030";
  String Lecturer = "احمد خالد حسن";
  String subject = "Mobile programming 22";
  String year = "الرابع";
  String hour = "12:00";
  bool ChecBox = false;

  void changeSelectedScheduleType({required int index}) {
    selectedScheduleType = index;
    notifyListeners();
  }

  void change_day({required int index}) {
    selectedScheduleType = index;

    notifyListeners();
  }
}
