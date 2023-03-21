// import 'package:flutter/material.dart';

// class StudyFeesProvider with ChangeNotifier {
//   String? level;
//   List<String> levels = ["1", "2", "3", "4"];
//   String? department;
//   List<String> departments = ["1", "2", "3", "4"];
//   String? division;
//   List<String> divisions = ["1", "2", "3", "4"];

//   //student Fess informations
//   int code = 111111;
//   String name = "احمد خالد حسن ابوالليل";
//   int Permission_number = 22222;
//   String Permission_Date = "15/5/2023";
//   int Receipt_number = 333333;
//   String date_Of_payment = "6/9/20000";
//   int Total = 987678;
//   String subject = "mobile programming";
//   String day = "saterday";
//   String date = "20/10/2023";
//   String exam_time = "12:00";
//   int sitting_number = 12345;
//   int the_commission = 3; //اللجنة
//   String the_commission_place = "A107";
//   int dagree = 120;
//   String estimate = "Very Good";
//   int summition = 777;
//   String total_estimate = "Very Good";
//   int percentage = 99;
//   int lecturer_code = 4444;
//   String lecturer_name = "gamal";
//   String lecturer_subject = "windows programming";
//   String study_year = "second";
//   int lecturer_phone_number = 0129458576;
//   int student_ID = 3252395834957;
//   int student_phone_number = 0104536346;
//   String entry_status = "مستجد "; //حاله القيد
//   String qualification = "high school";
//   String subject1 = "";
//   String subject2 = "";
//   String subject3 = "";
//   String subject4 = "";
//   String subject5 = "";
//   String subject6 = "";
//   int degree_subject1 = 120;
//   int degree_subject2 = 100;
//   int degree_subject3 = 100;
//   int degree_subject4 = 100;
//   int degree_subject5 = 120;
//   int degree_subject6 = 120;
//   String lecture = "lecture 1";
//   String lecture_time = "9:00";

//   void changeLevel({required String selectedLevel}) {
//     level = selectedLevel;

//     notifyListeners();
//   }

//   void changeDepartment({required String selectedDepartment}) {
//     department = selectedDepartment;
//     notifyListeners();
//   }

//   void changeDivision({required String selectedDivision}) {
//     division = selectedDivision;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';

class StudyFeesProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
  String? division;
  List<String> divisions = ["1", "2", "3", "4"];
  List<TableRow> tableRows = [
    TableRow(
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      children: const [
        Text(
          "الكود",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "الاسم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "رقم الإذن",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "تاريخ الإذن",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "رقم الإيصال",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "تاريخ السداد",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "الإجمالي",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
    TableRow(
      children: [
        Text(
          "45464",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "أحمد محمود",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ];
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
