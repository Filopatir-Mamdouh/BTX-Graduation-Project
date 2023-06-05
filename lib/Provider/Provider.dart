// ignore_for_file: file_names, avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types, prefer_typing_uninitialized_variables

import 'package:btxproject2/Pages/students_Affairs/educationData/Syllabus/Lecture.dart';
import 'package:btxproject2/Pages/students_Affairs/educationData/Syllabus/Syllabus.dart';
import 'package:btxproject2/Pages/students_Affairs/educationData/TableScaffold.dart';
import 'package:btxproject2/Pages/students_Affairs/educationData/degreeScaffold.dart';
import 'package:btxproject2/Pages/students_Affairs/educationData/studentscaffold.dart';
import 'package:btxproject2/Pages/students_Affairs/essensialData/communicate.dart';
import 'package:btxproject2/Pages/students_Affairs/essensialData/parents.dart';
import 'package:btxproject2/Pages/students_Affairs/essensialData/personality.dart';
import 'package:btxproject2/Pages/students_Affairs/essensialData/previousQualification.dart';
import 'package:flutter/material.dart';

class Semester extends ChangeNotifier {
  Container syllabus = Container(
    child: const Text("اختر الترم"),
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
  String StudentImgPath = "assets/img/image1.png";
  String SubjectName = "المادة";
  int degree = 0;
  String StudentName = "فيلوباتير";
  String StudentNameEnglish = "Filopatir Mamdouh";
  int StudentCode = 201902047;
  String StudentTeam = "الفرقة الرابعة";
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

class Team extends ChangeNotifier {
  String Team1 = " الأولى";
  String Team2 = " الثانية";
  String Team3 = " الثالثة";
  String Team4 = " الرابعة";

  String Sub = "المادة";
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

class LecturersProvider extends ChangeNotifier {
  bool find_selected_subject = false;
  Find_Selected_Subject() {
    find_selected_subject = !find_selected_subject;
    notifyListeners();
  }

  bool find_selected_Team = false;
  Find_Selected_Team() {
    find_selected_Team = !find_selected_Team;
    notifyListeners();
  }

  bool find_selected_Date = false;
  Find_Selected_Date() {
    find_selected_Date = !find_selected_Date;
    notifyListeners();
  }

  bool find_selected_subject_Team = false;
  Find_Selected_Subject_Team() {
    find_selected_subject_Team = !find_selected_subject_Team;
    notifyListeners();
  }

  bool find_selected_subject_Date = false;
  Find_Selected_Subject_Date() {
    find_selected_subject_Date = !find_selected_subject_Date;
    notifyListeners();
  }

  bool find_selected_Date_Team = false;
  Find_Selected_Team_Date() {
    find_selected_Date_Team = !find_selected_Date_Team;
    notifyListeners();
  }

  bool find_selected_subject_Team_Date = false;
  Find_Selected_Subject_Team_Date() {
    find_selected_subject_Team_Date = !find_selected_subject_Team_Date;
    notifyListeners();
  }

  String DoctorName = "الاسم";
  String DoctorNameFather = "اسم الاب";
  String Hint = "hint";
  String DoctorImgPath = "";
  String? Selected_Team;
  String Name = "Bavly";
  String TeamQR = "الفرقة الرابعة";
  String SectionQR = "تكنولوجيا المعلومات";
  String SubjectsQR = "sadfg";
  DateTime? date;
  String? Date;
  String DataQR = TimeOfDay.now().toString();
  changeTextErorTeam() {
    find_selected_Team = false;
    notifyListeners();
  }

  changeTextErorSubject() {
    find_selected_subject = false;
    notifyListeners();
  }

  changeTextErorDate() {
    find_selected_Date = false;
    notifyListeners();
  }

  void setSelected_Date(s) {
    Date = s;
    notifyListeners();
  }

  List<String> allCodes = [];
  List<String> Teams = [
    ' الأولي',
    ' الثانية',
    ' الثالثة',
    ' الرابعة',
  ];
  String? Selected_Subject;
  List<String> Subjects = [
    'المادة1',
    'المادة2',
    'المادة3',
    'المادة4',
    'المادة5',
    'المادة6',
  ];
  List<String> get Team => Teams;
  String? get selected_Team => Selected_Team;

  void setSelected_Team(s) {
    Selected_Team = s;
    notifyListeners();
  }

  List<String> get Subject => Subjects;
  String? get selected_Subject => Selected_Subject;

  void setSelected_Subject(s) {
    Selected_Subject = s;
    notifyListeners();
  }

  int SubjectExpandablePanelCount = 4;
  final List<Map> SubjectExpandablePanel = List.generate(
      4, //when you connect that number wih the num of Subject of Doctor connect it to int SubjectExpandablePanelCount too
      (index) => {
            "ID": index,
            "الفرقة": "الرابعة",
            "المادة": "IT",
          }).toList();

  int addLicturecount = 4;
  final List<Map> AddLecture = List.generate(
      4, //when you connect that number wih the num of Licture of Subject connect it to int AddLecture too
      (index) => {
            "ID": index,
            "الفرقة": "",
            "الماده": "IT",
          }).toList();
}

class LibraryBage extends ChangeNotifier {
  String Hint = "84512";
  int Available_places = 4;
  String Library_State = "Empty";
}

class Library_QR extends ChangeNotifier {
  String Date_Today = DateTime.now().toString();
  String Name = "Bavly";
  String Team = "الفرقة الرابعة";
  String Section = "تكنولوجيا المعلومات";

  List<String> data = ["Bavly", "الفرقه", "القسم", DateTime.now().toString()];
}

class Tables extends ChangeNotifier {
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
