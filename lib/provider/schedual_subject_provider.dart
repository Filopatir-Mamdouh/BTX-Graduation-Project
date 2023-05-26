import 'package:flutter/cupertino.dart';

class Tables_provider extends ChangeNotifier {
  List<int> Licture_begin = [
    8,
    10,
    14
  ]; //the time that the lecture or section will begin
  List<int> periode_Lecture = [
    2,
    3,
    1
  ]; //the periode that the lecture or section work by hour
  List<String> Type = ["محاضره", "سكشن", "محاضره"];
  var dropdownValue;
  List<String> Team = [
    "الأولى",
    "الثانية",
    "الثالثة",
    "الرابعة",
  ];
  List<String> div = [
    "الشعبه الاولي",
    "الشعبه الثانيه",
  ];
  List<String> Section = [
    "تكنولوجيا المعلومات",
    "ميكاترونيكس",
    "اطراف صناعيه",
    "اوتوترونيكس",
    "طاقه"
  ];
}
