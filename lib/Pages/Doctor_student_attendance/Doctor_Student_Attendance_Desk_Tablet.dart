import 'package:flutter/material.dart';
import 'package:graduation_project/provider/Doctor_student_Attendance_Provider.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/presentation/widgets/widgets/default_drop_down_button.dart';

import 'package:provider/provider.dart';

class StudentsAttendanceScreen_Desk_Tablet extends StatelessWidget {
  const StudentsAttendanceScreen_Desk_Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    String? level = StudentsAttendanceProvider().level;
    List<String> levels = StudentsAttendanceProvider().levels;
    String? department = StudentsAttendanceProvider().department;
    List<String> departments = StudentsAttendanceProvider().departments;
    String? subject = StudentsAttendanceProvider().subject;
    List<String> subjects = StudentsAttendanceProvider().subjects;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StudentsAttendanceProvider>(
          create: (_) => StudentsAttendanceProvider(),
        ),
      ],
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
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 600,
                child: Row(
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
                          StudentsAttendanceProvider()
                              .changeLevel(selectedLevel: value);
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
                          StudentsAttendanceProvider()
                              .changeDepartment(selectedDepartment: value);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "المادة",
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
                        list: subjects,
                        value: subject,
                        onChanged: (value) {
                          StudentsAttendanceProvider()
                              .changeSubject(selectedSubject: value);
                        },
                      ),
                    ),
                  ],
                ),
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
                      columnWidths: const {
                        1: FlexColumnWidth(2),
                        2: FlexColumnWidth(4),
                      },
                      border: TableBorder.all(
                        color: AppColors.primary,
                        width: 2.0,
                      ),
                      children: [
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
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 2, left: 2, top: 2, bottom: 2),
                              child: FittedBox(
                                child: Text(
                                  "1     2     3     4      5     6     7   8     9     10     11     12",
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  "${StudentsAttendanceProvider().code}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              child: Text(
                                "${StudentsAttendanceProvider().name}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "${StudentsAttendanceProvider().Lectures}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
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
