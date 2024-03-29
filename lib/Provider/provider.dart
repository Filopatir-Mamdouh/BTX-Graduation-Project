import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/pages/students_affairs/education_data/degre_scaffold.dart';
import 'package:graduation_project/pages/students_affairs/education_data/studentscaffold.dart';
import 'package:graduation_project/pages/students_affairs/education_data/syllabus/lecture.dart';
import 'package:graduation_project/pages/students_affairs/education_data/syllabus/syllabus.dart';
import 'package:graduation_project/pages/students_affairs/education_data/tables_caffold.dart';
import 'package:graduation_project/pages/students_affairs/essensial_data/communicate.dart';
import 'package:graduation_project/pages/students_affairs/essensial_data/parents.dart';
import 'package:graduation_project/pages/students_affairs/essensial_data/personality.dart';
import 'package:graduation_project/pages/students_affairs/essensial_data/previous_qualification.dart';
import 'package:flutter/material.dart';

class Semester extends ChangeNotifier {
  Container syllabus = Container(child: const Text("اختر الترم"));
  bool changeStyleSemesterOne = false;
  bool changeStyleSemesterTwo = false;
  first() {
    syllabus = tableLecturesScaffold;
    changeStyleSemesterOne = true;
    changeStyleSemesterTwo = false;
    notifyListeners();
  }

  second() {
    syllabus = tableLecturesScaffold;
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
  String studentImgPath = "assets\\prof.jpeg";
  String subjectName = "المادة";
  int degree = 0;
  int code = 345;
  String studentName = "فيلوباتير";
  String studentNameEnglish = "Filopatir Mamdouh";
  int studentCode = 201902047;
  String studentTeam = "الفرقة الرابعة";
  String section = "تكنولوجيا المعلومات";
  String division = "S/w";
  String email = "bavlybadry123@gmail.com";
  String religion = "مسيحي";
  String gender = "ذكر";
  String nationality = "مصري";
  String dateOfBirth = "17/5/2001";
  String placeOfDate = "الاسكندرية";
  String socialState = "اعزب";
  String kindId = "بطاقة قومية";
  int id = 13541654865513;
  String dateAppear = "14/5/2017";
  String placeAppear = "محرم بك-الاسكندرية";
  String fatherName = "ممدوح فيليب ذكري";
  String motherName = "";
  String entryState = "مستجد";
  String acceptkind = "محول";
  String acceptYear = "2020-2021";
  String city = "محرم بك-الاسكندرية";
  String address = "محرم بك-الاسكندرية";
  int telephoneHome = 458746512;
  int phoneNumber = 01288225827;
  String fax = "";
  String apartmentNumber = "";
  String emailBox = "";
  String emailCode = "";
  String guardianName = "ممدوح فيليب ذكري";
  String guardianNationality = "مصري";
  String guardianCity = "محرم بك-الاسكندرية";
  String guardianAddress = "محرم بك-الاسكندرية";
  String guardianJob = "";
  String guardianEmpolyer = "";
  String guardianDegreeOfKindShip = "أب";
  int guardianPhoneWork = 487458;
  int guardianPhone = 45874512;
  String guardianEmail = "";
  String guardianFax = "";
  String qualification = "ثانوي عام-رياضة";
  String sideQualification = "مدرسة محرم بك";
  int graduationYear = 2019;
  int totalDegreeGraduation = 450;
  double percentage = 100;
}

class ScaffoldDataEducation extends ChangeNotifier {
  Container scaffold = Container();
  bool student = false;
  bool degree = false;
  bool table = false;
  bool syllabus = false;
  studentScaffold() {
    scaffold = studentscaffold;
    student = true;
    degree = false;
    table = false;
    syllabus = false;
    notifyListeners();
  }

  degreescaffold() {
    scaffold = degreeScaffold;
    degree = true;
    student = false;
    table = false;
    syllabus = false;
    notifyListeners();
  }

  tablescaffold() {
    scaffold = tableScaffold;
    degree = false;
    student = false;
    table = true;
    syllabus = false;
    notifyListeners();
  }

  syllabusscaffold() {
    scaffold = syllabusScaffold;
    syllabus = true;
    degree = false;
    student = false;
    table = false;
    notifyListeners();
  }
}

class Team extends ChangeNotifier {
  String team1 = " الأولى";
  String team2 = " الثانية";
  String team3 = " الثالثة";
  String team4 = " الرابعة";

  String sub = "المادة";
}

class ScaffoldEssensialData extends ChangeNotifier {
  Container _scaffold = Container();
  Container get scaffold => _scaffold;
  bool _personality = false;
  bool _communication = false;
  bool _parents = false;
  bool _previousQualification = false;
  bool get personality => _personality;
  bool get communication => _communication;
  bool get parents => _parents;
  bool get previousQualification => _previousQualification;
  personalityscaffold() {
    _scaffold = personalityScaffold;
    _personality = true;
    _communication = false;
    _parents = false;
    _previousQualification = false;
    notifyListeners();
  }

  setscaffold(int index) {
    switch (index) {
      case 0:
        _scaffold = personalityScaffold;
        break;
      case 1:
        _scaffold = communicateScaffold;
        break;
      case 2:
        _scaffold = parentsScaffold;
        break;
      case 3:
        _scaffold = previousScaffold;
        break;
    }
    notifyListeners();
  }

  communicatescaffold() {
    _scaffold = communicateScaffold;
    _communication = true;
    _personality = false;
    _parents = false;
    _previousQualification = false;
    notifyListeners();
  }

  parentsscaffold() {
    _scaffold = parentsScaffold;
    _communication = false;
    _personality = false;
    _parents = true;
    _previousQualification = false;
    notifyListeners();
  }

  previousscaffold() {
    _scaffold = previousScaffold;
    _previousQualification = true;
    _communication = false;
    _personality = false;
    _parents = false;
    notifyListeners();
  }
}

class LecturersProvider extends ChangeNotifier {
  bool findselectedsubject = false;
  findSelectedSubject() {
    findselectedsubject = !findselectedsubject;
    notifyListeners();
  }

  bool findselectedTeam = false;
  findSelectedTeam() {
    findselectedTeam = !findselectedTeam;
    notifyListeners();
  }

  bool findselectedDate = false;
  findSelectedDate() {
    findselectedDate = !findselectedDate;
    notifyListeners();
  }

  bool findselectedsubjectTeam = false;
  findSelectedSubjectTeam() {
    findselectedsubjectTeam = !findselectedsubjectTeam;
    notifyListeners();
  }

  bool findselectedsubjectDate = false;
  findSelectedSubjectDate() {
    findselectedsubjectDate = !findselectedsubjectDate;
    notifyListeners();
  }

  bool findselectedDateTeam = false;
  findSelectedTeamDate() {
    findselectedDateTeam = !findselectedDateTeam;
    notifyListeners();
  }

  bool findselectedsubjectTeamDate = false;
  findSelectedSubjectTeamDate() {
    findselectedsubjectTeamDate = !findselectedsubjectTeamDate;
    notifyListeners();
  }

  String doctorName = "الاسم";
  String doctorNameFather = "اسم الاب";
  String hint = "hint";
  String doctorImgPath = "assets\\prof.jpeg";
  String? selectedTeams;
  String name = "Bavly";
  String teamQR = "الفرقة الرابعة";
  String sectionQR = "تكنولوجيا المعلومات";
  String subjectsQR = "sadfg";
  DateTime? date;
  String? ddate;
  String dataQR = TimeOfDay.now().toString();
  changeTextErorTeam() {
    findselectedTeam = false;
    notifyListeners();
  }

  changeTextErorSubject() {
    findselectedsubject = false;
    notifyListeners();
  }

  changeTextErorDate() {
    findselectedDate = false;
    notifyListeners();
  }

  void setSelectedDate(s) {
    ddate = s;
    notifyListeners();
  }

  List<String> allCodes = [];
  List<String> teams = [
    ' الأولي',
    ' الثانية',
    ' الثالثة',
    ' الرابعة',
  ];
  String? selectedSubjects;
  List<String> subjects = [
    'المادة1',
    'المادة2',
    'المادة3',
    'المادة4',
    'المادة5',
    'المادة6',
  ];
  List<String> get team => teams;
  String? get selectedTeam => selectedTeams;

  void setSelectedTeam(s) {
    selectedTeams = s;
    notifyListeners();
  }

  List<String> get subject => subjects;
  String? get selectedSubject => selectedSubjects;
  void setSelectedSubject(s) {
    selectedSubjects = s;
    notifyListeners();
  }

  int subjectExpandablePanelCount = 4;
  final List<Map> subjectExpandablePanel = List.generate(
      4, //when you connect that number wih the num of Subject of Doctor connect it to int SubjectExpandablePanelCount too
      (index) => {
            "ID": index,
            "الفرقة": "الرابعة",
            "المادة": "IT",
          }).toList();

  int addLicturecount = 4;
  final List<Map> addLecture = List.generate(
      4, //when you connect that number wih the num of Licture of Subject connect it to int AddLecture too
      (index) => {
            "ID": index,
            "الفرقة": "",
            "الماده": "IT",
          }).toList();
}

class LibraryBage extends ChangeNotifier {
  String hint = "84512";
  int availableplaces = 4;
  String libraryState = "Empty";
}

class LibraryQR extends ChangeNotifier {
  String dateToday = DateTime.now().toString();
  String name = "Bavly";
  String team = "الفرقة الرابعة";
  String section = "تكنولوجيا المعلومات";

  List<String> data = ["Bavly", "الفرقه", "القسم", DateTime.now().toString()];
}

class Tables extends ChangeNotifier {
  List<int> licturebegin = [
    8,
    10,
    14
  ]; //the time that the lecture or section will begin
  List<int> periodeLecture = [
    2,
    3,
    1
  ]; //the periode that the lecture or section work by hour
  List<String> type = ["محاضره", "سكشن", "محاضره"];
  // ignore: prefer_typing_uninitialized_variables
  var dropdownValue;
  List<String> team = [
    "الأولى",
    "الثانية",
    "الثالثة",
    "الرابعة",
  ];
  List<String> div = [
    "الشعبه الاولي",
    "الشعبه الثانيه",
  ];
  List<String> section = [
    "تكنولوجيا المعلومات",
    "ميكاترونيكس",
    "اطراف صناعيه",
    "اوتوترونيكس",
    "طاقه"
  ];
}

class RespondAnswer extends ChangeNotifier {
  List<Map> question = List.generate(
      10,
      (index) => {
            "id": index,
            "السؤال":
                "gftdresdxfcgvhbjkoiuytfrdfghjkoiuytrdedfghjkoiuytfrdfcgvhbjkijuytfrdfcgvhbnjklhygftrdedfghjkouygtfdredfghjkoiuytrdedfcgvhbjjkhgftrdxcvbhnjkijhuygftrdfcgvhbjkiuytrdrfghjikoiuytrdfghjiuytrdfcgvhbjoiuy76trdfcgvhjkoiuytrffgvhjkiuytrdfcgvhbnjkoiuytfrgvhbnjkoiuytrffgvhjkoiuy76trdfghjiuy76trfghjiuy76tr5fghjikoiuyt6rfghjkoiuytrffgvhjkiuytfghjiuytrfghjoiuy76trfghjiuytrfghjiuytrfghjiuy76trftghujiuytrdftgyuh",
            "الراسل": "بافلي"
          }).toList();
}

class LecturersDrawer {
  List<String> get educationDetailsList =>
      ["المقررات الدراسية", "الجدول الدراسي", "الحضور"];
  List<String> get instructorDetailsList => ["بيانات المحاضرين", "الحضور"];
  List<String> get studentDetailsList => [
        "البيانات الأساسية",
        "النتائج الدراسية",
        "نسبة الحضور",
        "الرسوم الدراسية",
        "استخراج مستند"
      ];
}

final lecturersDrawerProvider = Provider<LecturersDrawer>((ref) {
  return LecturersDrawer();
});

final essentialProvider = Provider<ScaffoldEssensialData>((ref) {
  return ScaffoldEssensialData();
});
