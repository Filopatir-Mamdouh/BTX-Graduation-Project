//

import 'package:flutter/material.dart';
import 'package:graduation_project/Data_Screen/Data_screen_responsive.dart';
import 'package:graduation_project/Doctor_student_attendance/Doctor_student_Attendance_Provider.dart';
import 'package:graduation_project/Doctor_student_attendance/Doctor_student_attendance_responsive.dart';
import 'package:graduation_project/Educational%20_Data/Educational_Data_Screen_Responsive.dart';
import 'package:graduation_project/Exams_table/Exams_table.dart';
import 'package:graduation_project/Exams_table/Exams_table_class.dart';
import 'package:graduation_project/Lecture_Attendance/Lecture_Attendance_table_responsive.dart';
import 'package:graduation_project/Material_Schedual_Screen/Material_Schedual_Responsive.dart';
import 'package:graduation_project/Student_Academiv_result_affairs/Student_Academic_Result_Responsive.dart';
import 'package:graduation_project/Student_Attendance_Affairs/Student_Attendance_responsive.dart';
import 'package:graduation_project/Student_information_screen/Student_information_Responsive.dart';
import 'package:graduation_project/Student_information_screen/Student_information_provider.dart';
import 'package:graduation_project/Students_Doctor_Results_Screeen/Student_Doctor_resultResponsive.dart';
import 'package:graduation_project/Study_fees_affairs/Affairs_Study_fees_Responsive.dart';
import 'package:graduation_project/Study_result_page/study_result_responsive.dart';
import 'package:graduation_project/TeacherSceduleScreen/TeacherSceduleProvider.dart';
import 'package:graduation_project/TeacherSceduleScreen/TeacherSceduleResponsive.dart';
import 'package:graduation_project/Teacher_Basic_Data/Teacher_Basic_Data.dart';
import 'package:graduation_project/Teacher_Basic_Data/Teacher_Basic_Data_responsive.dart';
import 'package:graduation_project/affairs_main_page/affairs_body_class.dart';
import 'package:graduation_project/affairs_main_page/affairs_main.dart';
import 'package:graduation_project/basic_info/Basic_info_responsive.dart';
import 'package:graduation_project/fees_page/fees_page_responsive.dart';
import 'package:graduation_project/lecture_info/lecture_informationresponsive.dart';
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
import 'package:graduation_project/study_table/stydy_table_Responsive.dart';
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
        ChangeNotifierProvider<StudentsInformationsProvider>(
          create: (_) => StudentsInformationsProvider(),
        ),
        ChangeNotifierProvider<StudentsAttendanceProvider>(
          create: (_) => StudentsAttendanceProvider(),
        ),
        ChangeNotifierProvider<TeacherScedueScreenProvider>(
          create: (_) => TeacherScedueScreenProvider(),
        ),
        //TeacherScedueScreenProvider
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
        home: affairs_main(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
