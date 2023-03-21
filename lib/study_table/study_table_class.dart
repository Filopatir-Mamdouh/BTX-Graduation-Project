import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/presentation/provider/lecture_schadule.dart';

import 'package:provider/provider.dart';

class LecturesScheduleScreen extends StatelessWidget {
  const LecturesScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lecturesScheduleProvider =
        Provider.of<LecturesScheduleProvider>(context);
    List<TableRow> tableRows = lecturesScheduleProvider.tableRows;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            child: Column(
              children: [
                Text(
                  "الجدول الدراسي",
                  style: TextStyle(
                    color: Colors.grey[900],
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
                      child: SingleChildScrollView(
                        child: Table(
                          textDirection: TextDirection.rtl,
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          columnWidths: const {0: FlexColumnWidth(2)},
                          children: tableRows,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "تحميل الجدول",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "جدول القاعات",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
