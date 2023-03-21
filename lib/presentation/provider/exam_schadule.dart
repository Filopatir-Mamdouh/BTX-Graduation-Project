import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';

class ExamsScheduleProvider with ChangeNotifier {
  List<TableRow> tableRows = [
    TableRow(
      children: [
        Text(
          "تاريخ الإمتحان",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "توقيت الإمتحان",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "المقرر الدراسي",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "الأربعاء",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "10/10/2010",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          "12:00",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "المادة",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "الأربعاء",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "10/10/2010",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          "12:00",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "المادة",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "الأربعاء",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "10/10/2010",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          "12:00",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "المادة",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "الأربعاء",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "10/10/2010",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          "12:00",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "المادة",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "الأربعاء",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
              Text(
                "10/10/2010",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
        Text(
          "12:00",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
            fontSize: 16.0,
          ),
        ),
        Text(
          "المادة",
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
