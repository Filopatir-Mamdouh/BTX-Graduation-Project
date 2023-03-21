import 'package:bt_x/core/app_colors.dart';
import 'package:bt_x/presentation/provider/students_academic_results_provider.dart';
import 'package:bt_x/presentation/widgets/widgets/default_drop_down_button.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class StudentsAcademicResultsScreen extends StatelessWidget {
  const StudentsAcademicResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final studentsAcademicResultsProvider =
        Provider.of<StudentsAcademicResultsProvider>(context);
    String? level = studentsAcademicResultsProvider.level;
    List<String> levels = studentsAcademicResultsProvider.levels;
    String? department = studentsAcademicResultsProvider.department;
    List<String> departments = studentsAcademicResultsProvider.departments;
    String? division = studentsAcademicResultsProvider.division;
    List<String> divisions = studentsAcademicResultsProvider.divisions;
    List<TableRow> tableRows = studentsAcademicResultsProvider.tableRows;
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
                "النتائج الدراسية للطلبة",
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
                        studentsAcademicResultsProvider.changeLevel(
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
                        studentsAcademicResultsProvider.changeDepartment(
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
                        studentsAcademicResultsProvider.changeDivision(
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
            ],
          ),
        ),
      ),
    );
  }
}
