import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/presentation/widgets/widgets/default_check_box.dart';

class LecturersAttendanceScheduleProvider with ChangeNotifier {
  int selectedScheduleType = 0;

  List<TableRow> tableRows = [
    TableRow(
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      children: const [
        Text(
          "اليوم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "المحاضر",
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
          "الفرقة",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "الساعة",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          "الحضور",
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
          "السبت\n12/10",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 70.0,
              child: Center(
                child: Text(
                  "محاضر 1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2,
            ),
            SizedBox(
              height: 70.0,
              child: Center(
                child: Text(
                  "محاضر 2",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 70.0,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "المادة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.primary,
                    thickness: 2.0,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "المادة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            SizedBox(
              height: 70.0,
              child: Center(
                child: Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 70.0,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "الفرقة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.primary,
                    thickness: 2.0,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "الفرقة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            SizedBox(
              height: 70.0,
              child: Center(
                child: Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 70.0,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "الساعة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.primary,
                    thickness: 2.0,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "الساعة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            SizedBox(
              height: 70.0,
              child: Center(
                child: Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 70.0,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: DefaultCheckBox(
                        value: false,
                      ),
                    ),
                  ),
                  Divider(
                    color: AppColors.primary,
                    thickness: 2.0,
                  ),
                  Expanded(
                    child: Center(
                      child: DefaultCheckBox(
                        value: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            SizedBox(
              height: 70.0,
              child: Center(
                child: DefaultCheckBox(
                  value: false,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ];

  void changeSelectedScheduleType({required int index}) {
    selectedScheduleType = index;
    notifyListeners();
  }
}
