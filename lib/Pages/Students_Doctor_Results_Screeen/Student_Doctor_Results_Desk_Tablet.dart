import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/provider/students_academic_results_provider.dart';
import 'package:graduation_project/presentation/widgets/widgets/default_drop_down_button.dart';

import 'package:provider/provider.dart';

class StudentsAcademicResultsScreen_Desk_Tablet extends StatelessWidget {
  const StudentsAcademicResultsScreen_Desk_Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    String? level = StudentsAcademicResultsProvider().level;
    List<String> levels = StudentsAcademicResultsProvider().levels;
    String? department = StudentsAcademicResultsProvider().department;
    List<String> departments = StudentsAcademicResultsProvider().departments;
    String? division = StudentsAcademicResultsProvider().division;
    List<String> divisions = StudentsAcademicResultsProvider().divisions;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StudentsAcademicResultsProvider>(
          create: (_) => StudentsAcademicResultsProvider(),
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
                "النتائج الدراسية للطلبة",
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
                width: 550,
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
                          StudentsAcademicResultsProvider()
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
                          StudentsAcademicResultsProvider()
                              .changeDepartment(selectedDepartment: value);
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
                          StudentsAcademicResultsProvider()
                              .changeDivision(selectedDivision: value);
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
                            Text(
                              "مادة 1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "مادة 2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "مادة 3",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "مادة 4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "مادة 5",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "مادة 6",
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
                              "${StudentsAcademicResultsProvider().code}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FittedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  "${StudentsAcademicResultsProvider().name}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "${StudentsAcademicResultsProvider().subject1}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${StudentsAcademicResultsProvider().subject2}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${StudentsAcademicResultsProvider().subject3}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${StudentsAcademicResultsProvider().subject4}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${StudentsAcademicResultsProvider().subject5}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${StudentsAcademicResultsProvider().subject6}",
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
