import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';

class StudyFeesPro with ChangeNotifier {
  List<TableRow> tableRows = [
    TableRow(
      children: [
        Text(
          "رقم الإذن",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "تاريخ الإذن",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "رقم الإيصال",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "تاريخ السداد",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "الإجمالي",
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
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
        Text(
          "رقم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            fontSize: 16.0,
          ),
        ),
        Text(
          "رقم",
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
}
