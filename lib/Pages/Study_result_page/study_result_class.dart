import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/provider/year_result.dart';
import 'package:graduation_project/presentation/widgets/widgets/default_drop_down_button.dart';

import 'package:provider/provider.dart';

class YearResultScreen extends StatelessWidget {
  const YearResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final yearResultProvider = Provider.of<YearResultProvider>(context);
    String? level = yearResultProvider.level;
    List<String> levels = yearResultProvider.levels;
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
                "النتيجة الدراسية",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Row(
                  children: [
                    Text(
                      "السنة الدراسية",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: DefaultDropDownButton(
                            list: levels,
                            value: level,
                            onChanged: (value) {
                              yearResultProvider.changeLevel(
                                  selectedLevel: value);
                            },
                          ),
                        ),
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
                      width: 12.0,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primary,
                              width: 2.0,
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Table(
                              textDirection: TextDirection.rtl,
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              children: [
                                TableRow(
                                  children: [
                                    Text(
                                      "المقرر الدراسي",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.grey,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      "الدرجة",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.grey,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      "التقدير",
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
                                      child: Center(
                                        child: Text(
                                          "${YearResultProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.primary,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "${YearResultProvider().degree}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primary,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      "${YearResultProvider().grade}",
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
                                      child: Center(
                                        child: Text(
                                          "${YearResultProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.primary,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "${YearResultProvider().degree}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primary,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      "${YearResultProvider().grade}",
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
                                      child: Center(
                                        child: Text(
                                          "${YearResultProvider().subject}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.primary,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "${YearResultProvider().degree}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primary,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      "${YearResultProvider().grade}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primary,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "المجموع",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                "${YearResultProvider().total}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "التقدير",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                "${YearResultProvider().total_Grade}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "النسبة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                "${YearResultProvider().persantage}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 16.0,
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
            ]),
          ),
        ),
      ),
    );
  }
}
