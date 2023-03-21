import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';

class EducationalDataProvider with ChangeNotifier {
  String? department;
  List<String> departments = ["1", "2", "3", "4"];
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
          "المادة",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "القسم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "الفرقة",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "المحاضر",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Total",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Lab",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Tutorial",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Lecture",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Credit",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
    TableRow(
      children: [
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "45464",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "Computer Architecture",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "P & O Technology",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Text(
          "الرابعة",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "الدكتور",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "20",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "20",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "20",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "20",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "20",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ];
  void changeDepartment({required String selectedDepartment}) {
    department = selectedDepartment;
    notifyListeners();
  }
}
