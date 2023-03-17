import 'package:btxproject2/educationData/%D9%8DSyllabus/Lecture.dart';
import 'package:btxproject2/educationData/%D9%8DSyllabus/Syllabus.dart';
import 'package:btxproject2/educationData/TableScaffold.dart';
import 'package:btxproject2/educationData/degreeScaffold.dart';
import 'package:btxproject2/educationData/studentscaffold.dart';
import 'package:btxproject2/essensialData/communicate.dart';
import 'package:btxproject2/essensialData/parents.dart';
import 'package:btxproject2/essensialData/personality.dart';
import 'package:btxproject2/essensialData/previousQualification.dart';
import 'package:flutter/material.dart';

class Semester extends ChangeNotifier {
  Container syllabus = Container(
    child: Text("اختر الترم"),
  );
  bool changeStyleSemesterOne = false;
  bool changeStyleSemesterTwo = false;
  first() {
    syllabus = Table_Lectures_Scaffold;
    changeStyleSemesterOne = true;
    changeStyleSemesterTwo = false;
    notifyListeners();
  }

  second() {
    syllabus = Table_Lectures_Scaffold;
    changeStyleSemesterOne = false;
    changeStyleSemesterTwo = true;
    notifyListeners();
  }

  String name = "";
  sub() {
    name = "المادة";
  }
}

class StudentDetails extends ChangeNotifier {
  String StudentImgPath = "";
  String SubjectName = "المادة";
  int degree = 0;
  String StudentName = "فيلوباتير";
  String StudentNameEnglish = "Filopatir Mamdouh";
  int StudentCode = 201902047;
  String Section = "تكنولوجيا المعلومات";
  String Division = "S/w";
  String Email = "bavlybadry123@gmail.com";
  String Religion = "مسيحي";
  String Gender = "ذكر";
  String Nationality = "مصري";
  String DateOfBirth = "17/5/2001";
  String PlaceOfDate = "الاسكندرية";
  String SocialState = "اعزب";
  String kindId = "بطاقة قومية";
  int Id = 13541654865513;
  String DateAppear = "14/5/2017";
  String PlaceAppear = "محرم بك-الاسكندرية";
  String FatherName = "ممدوح فيليب ذكري";
  String MotherName = "";
  String EntryState = "مستجد";
  String Acceptkind = "محول";
  String AcceptYear = "2020-2021";
  String City = "محرم بك-الاسكندرية";
  String Address = "محرم بك-الاسكندرية";
  int TelephoneHome = 458746512;
  int PhoneNumber = 01288225827;
  String Fax = "";
  String ApartmentNumber = "";
  String EmailBox = "";
  String EmailCode = "";
  String GuardianName = "ممدوح فيليب ذكري";
  String GuardianNationality = "مصري";
  String GuardianCity = "محرم بك-الاسكندرية";
  String GuardianAddress = "محرم بك-الاسكندرية";
  String GuardianJob = "";
  String GuardianEmpolyer = "";
  String GuardianDegreeOfKindShip = "أب";
  int GuardianPhoneWork = 487458;
  int GuardianPhone = 45874512;
  String GuardianEmail = "";
  String GuardianFax = "";
  String Qualification = "ثانوي عام-رياضة";
  String SideQualification = "مدرسة محرم بك";
  int GraduationYear = 2019;
  int TotalDegreeGraduation = 450;
  double percentage = 100;
}

class ScaffoldDataEducation extends ChangeNotifier {
  Container Scaffold = Container();
  bool student = false;
  bool degree = false;
  bool table = false;
  bool syllabus = false;
  studentScaffold() {
    Scaffold = Student_scaffold;
    student = true;
    degree = false;
    table = false;
    syllabus = false;
    notifyListeners();
  }

  DegreeScaffold() {
    Scaffold = Degree_Scaffold;
    degree = true;
    student = false;
    table = false;
    syllabus = false;
    notifyListeners();
  }

  TableScaffold() {
    Scaffold = Table_Scaffold;
    degree = false;
    student = false;
    table = true;
    syllabus = false;
    notifyListeners();
  }

  SyllabusScaffold() {
    Scaffold = Syllabus_Scaffold;
    syllabus = true;
    degree = false;
    student = false;
    table = false;
    notifyListeners();
  }
}

class ScaffoldEssensialData extends ChangeNotifier {
  Container Scaffold = Container();
  bool Personality = false;
  bool Communication = false;
  bool Parents = false;
  bool PreviousQualification = false;
  PersonalityScaffold() {
    Scaffold = Personality_Scaffold;
    Personality = true;
    Communication = false;
    Parents = false;
    PreviousQualification = false;
    notifyListeners();
  }

  CommunicateScaffold() {
    Scaffold = Communicate_Scaffold;
    Communication = true;
    Personality = false;
    Parents = false;
    PreviousQualification = false;
    notifyListeners();
  }

  ParentsScaffold() {
    Scaffold = Parents_Scaffold;
    Communication = false;
    Personality = false;
    Parents = true;
    PreviousQualification = false;
    notifyListeners();
  }

  PreviousScaffold() {
    Scaffold = Previous_Scaffold;
    PreviousQualification = true;
    Communication = false;
    Personality = false;
    Parents = false;
    notifyListeners();
  }
}
