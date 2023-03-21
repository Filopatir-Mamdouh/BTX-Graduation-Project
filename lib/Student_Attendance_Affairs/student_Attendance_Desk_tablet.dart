import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/presentation/provider/students_attendance_schedule_provider.dart';
import 'package:graduation_project/presentation/widgets/widgets/default_drop_down_button.dart';

import 'package:provider/provider.dart';

class student_Attendance_Desk_tablet extends StatelessWidget {
  const student_Attendance_Desk_tablet({super.key});

  @override
  Widget build(BuildContext context) {
    final studentsAttendanceScheduleProvider =
        Provider.of<StudentsAttendanceScheduleProvider>(context);
    String? level = studentsAttendanceScheduleProvider.level;
    List<String> levels = studentsAttendanceScheduleProvider.levels;
    String? department = studentsAttendanceScheduleProvider.department;
    List<String> departments = studentsAttendanceScheduleProvider.departments;
    String? division = studentsAttendanceScheduleProvider.division;
    List<String> divisions = studentsAttendanceScheduleProvider.divisions;
    List<TableRow> tableRows = studentsAttendanceScheduleProvider.tableRows;
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
                "جدول حضور الطلبة",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Text(
                    "الفرقة",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: DefaultDropDownButton(
                      list: levels,
                      value: level,
                      onChanged: (value) {
                        studentsAttendanceScheduleProvider.changeLevel(
                            selectedLevel: value);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "القسم",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: DefaultDropDownButton(
                      list: departments,
                      value: department,
                      onChanged: (value) {
                        studentsAttendanceScheduleProvider.changeDepartment(
                            selectedDepartment: value);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "الشعبة",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: DefaultDropDownButton(
                      list: divisions,
                      value: division,
                      onChanged: (value) {
                        studentsAttendanceScheduleProvider.changeDivision(
                            selectedDivision: value);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}
