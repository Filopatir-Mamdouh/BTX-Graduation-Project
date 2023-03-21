import 'package:bt_x/core/app_colors.dart';
import 'package:flutter/material.dart';

class YearResultProvider with ChangeNotifier {
  String? level;
  List<String> levels = ["1", "2", "3", "4"];
  List<TableRow> tableRows = [
    TableRow(
      children: [
        Text(
          "المقرر الدراسي",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "الدرجة",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "التقدير",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
      ],
    ),
    TableRow(
      children: [
        SizedBox(
          height: 70.0,
          child: Center(
            child: Text(
              "المادة",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Text(
          "100",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
        Text(
          "جيد جدا",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
      ],
    ),
    TableRow(
      children: [
        SizedBox(
          height: 70.0,
          child: Center(
            child: Text(
              "المادة",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Text(
          "100",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
        Text(
          "جيد جدا",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
      ],
    ),
    TableRow(
      children: [
        SizedBox(
          height: 70.0,
          child: Center(
            child: Text(
              "المادة",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Text(
          "100",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
        Text(
          "جيد جدا",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
      ],
    ),
  ];
  void changeLevel({required String selectedLevel}) {
    level = selectedLevel;
    notifyListeners();
  }
}
