import 'package:flutter/material.dart';
import 'package:graduation_project/TeacherSceduleScreen/TeacherSceduleProvider.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:provider/provider.dart';

class ScheduleScreen_Desk_Tablet extends StatelessWidget {
  const ScheduleScreen_Desk_Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    final materialsScheduleProvider =
        Provider.of<TeacherScedueScreenProvider>(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            child: Column(children: [
              Text(
                "الجدول الدراسي",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
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
                      width: 12.0,
                    ),
                  ),
                  child: Table(
                    textDirection: TextDirection.rtl,
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder.all(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "الفترة/اليوم",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "8-9  9-10",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "10-11  11-12",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "12-1  1-2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "2-3  3-4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "4-5  5-6",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              "${TeacherScedueScreenProvider().day}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                          Container(
                            height: 100.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FittedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        "${TeacherScedueScreenProvider().subject}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primary,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Text(
                                        " - ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primary,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Text(
                                        "${TeacherScedueScreenProvider().hall}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primary,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    "${TeacherScedueScreenProvider().Section}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    "${TeacherScedueScreenProvider().Year}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100.0,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  "",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "تحميل الجدول",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
