import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/provider/fees_provider.dart';

import 'package:provider/provider.dart';

class StudyFees extends StatelessWidget {
  const StudyFees({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StudyFeesPro>(
          create: (_) => StudyFeesPro(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 10.0,
            ),
            child: Column(children: [
              Text(
                "الرسوم الدراسية",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
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
                        children: [
                          TableRow(
                            children: [
                              Text(
                                "رقم الإذن",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "تاريخ الإذن",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "رقم الإيصال",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "تاريخ السداد",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.grey,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "الإجمالي",
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
                              Text(
                                "${StudyFeesPro().permission_number}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "${StudyFeesPro().permission_date}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "${StudyFeesPro().recepit_number}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "${StudyFeesPro().date_of_payment}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "${StudyFeesPro().total}",
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
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
