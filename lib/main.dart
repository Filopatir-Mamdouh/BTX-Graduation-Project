//

import 'package:flutter/material.dart';
import 'package:graduation_project/Student_Attendance_Affairs/Student_Attendance_responsive.dart';
import 'package:graduation_project/Teacher_Basic_Data/Teacher_Basic_Data.dart';
import 'package:graduation_project/presentation/provider/Taecher_Basic_Data_provider.dart';
import 'package:graduation_project/presentation/provider/basic_informations_provider.dart';
import 'package:graduation_project/presentation/provider/exam_schadule.dart';
import 'package:graduation_project/presentation/provider/fees_provider.dart';
import 'package:graduation_project/presentation/provider/lecture_schadule.dart';
import 'package:graduation_project/presentation/provider/lecturers_attendance_schedule_provider.dart';
import 'package:graduation_project/presentation/provider/lecturers_informations_provider.dart';
import 'package:graduation_project/presentation/provider/material_Schedule_provider.dart';
import 'package:graduation_project/presentation/provider/students_academic_results_provider.dart';
import 'package:graduation_project/presentation/provider/students_attendance_schedule_provider.dart';
import 'package:graduation_project/presentation/provider/students_data_provider.dart';
import 'package:graduation_project/presentation/provider/study_fees_provider.dart';
import 'package:graduation_project/presentation/provider/year_result.dart';
import 'package:graduation_project/presentation/widgets/widgets/Educational_Data_provider.dart';
import 'package:provider/provider.dart';

import './responsive_page/responsive.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<StudyFeesProvider>(
          create: (_) => StudyFeesProvider(),
        ),
        ChangeNotifierProvider<StudentsAcademicResultsProvider>(
          create: (_) => StudentsAcademicResultsProvider(),
        ),
        ChangeNotifierProvider<StudentsAttendanceScheduleProvider>(
          create: (_) => StudentsAttendanceScheduleProvider(),
        ),
        ChangeNotifierProvider<BasicInformationsProvider>(
          create: (_) => BasicInformationsProvider(),
        ),
        ChangeNotifierProvider<StudentsDataProvider>(
          create: (_) => StudentsDataProvider(),
        ),
        ChangeNotifierProvider<LecturersAttendanceScheduleProvider>(
          create: (_) => LecturersAttendanceScheduleProvider(),
        ),
        ChangeNotifierProvider<LecturersInformationsProvider>(
          create: (_) => LecturersInformationsProvider(),
        ),
        ChangeNotifierProvider<LecturesScheduleProvider>(
          create: (_) => LecturesScheduleProvider(),
        ),
        ChangeNotifierProvider<StudyFeesPro>(
          create: (_) => StudyFeesPro(),
        ),
        ChangeNotifierProvider<ExamsScheduleProvider>(
          create: (_) => ExamsScheduleProvider(),
        ),
        ChangeNotifierProvider<YearResultProvider>(
          create: (_) => YearResultProvider(),
        ),
        ChangeNotifierProvider<MaterialsScheduleProvider>(
          create: (_) => MaterialsScheduleProvider(),
        ),
        ChangeNotifierProvider<EducationalDataProvider>(
          create: (_) => EducationalDataProvider(),
        ),
        ChangeNotifierProvider<BasicDataProvider>(
          create: (_) => BasicDataProvider(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          // English
          Locale('ar'),
        ],
        debugShowCheckedModeBanner: false,
        home: BasicDataScreen(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
