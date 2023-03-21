import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/presentation/provider/lecturers_attendance_schedule_provider.dart';

import 'package:provider/provider.dart';

class LecturersAttendanceScheduleScreen extends StatelessWidget {
  const LecturersAttendanceScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lecturersAttendanceScheduleProvider =
        Provider.of<LecturersAttendanceScheduleProvider>(context);
    int selectedScheduleType =
        lecturersAttendanceScheduleProvider.selectedScheduleType;
    List<TableRow> tableRows = lecturersAttendanceScheduleProvider.tableRows;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              Text(
                "جدول حضور المحاضرين",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      lecturersAttendanceScheduleProvider
                          .changeSelectedScheduleType(index: 0);
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    color: selectedScheduleType == 0
                        ? AppColors.primary
                        : AppColors.primary.withOpacity(0.7),
                    child: const Text(
                      "اسبوعي",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      lecturersAttendanceScheduleProvider
                          .changeSelectedScheduleType(index: 1);
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    color: selectedScheduleType == 1
                        ? AppColors.primary
                        : AppColors.primary.withOpacity(0.7),
                    child: const Text(
                      "شهرى",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.primary,
                        width: 8.0,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Table(
                        textDirection: TextDirection.rtl,
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border: TableBorder.all(
                          color: AppColors.primary,
                          width: 2.0,
                        ),
                        children: tableRows,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "عرض تقرير",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
