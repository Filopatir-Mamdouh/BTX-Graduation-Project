import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/presentation/provider/material_Schedule_provider.dart';

import 'package:provider/provider.dart';

class MaterialsScheduleScreen extends StatelessWidget {
  const MaterialsScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final materialsScheduleProvider =
        Provider.of<MaterialsScheduleProvider>(context);
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
                "جدول المواد",
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
                child: RotatedBox(
                  quarterTurns: 1,
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
                              "اليوم",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              "9-10 8-9",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              "11-12  10-11",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              "2-3  1-2 12-1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              "4-5  3-4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 30.0),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Center(
                                  child: Text(
                                    "${MaterialsScheduleProvider().day}",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.primary,
                                  thickness: 2.0,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  height: 80.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          "${MaterialsScheduleProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.grey,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().place}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().lecturer_Name}",
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
                                      FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              "${MaterialsScheduleProvider().section}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              " - ",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.grey,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Text(
                                              "${MaterialsScheduleProvider().year}",
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
