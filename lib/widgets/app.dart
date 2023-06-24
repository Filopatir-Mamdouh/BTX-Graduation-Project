import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/Provider/Affairs_side_Menue_provider.dart';
import 'package:graduation_project/Provider/Doctor_student_Attendance_Provider.dart';
import 'package:graduation_project/Provider/Student_information_provider.dart';
import 'package:graduation_project/Provider/Taecher_Basic_Data_provider.dart';
import 'package:graduation_project/Provider/TeacherSceduleProvider.dart';
import 'package:graduation_project/Provider/basic_informations_provider.dart';
import 'package:graduation_project/Provider/books_provider.dart';
import 'package:graduation_project/Provider/chat/chat_provider.dart';
import 'package:graduation_project/Provider/chat/conversations_provider.dart';
import 'package:graduation_project/Provider/devices_provider.dart';
import 'package:graduation_project/Provider/exam_schadule.dart';
import 'package:graduation_project/Provider/fees_provider.dart';
import 'package:graduation_project/Provider/lecture_schadule.dart';
import 'package:graduation_project/Provider/lecturers_attendance_schedule_provider.dart';
import 'package:graduation_project/Provider/lecturers_informations_provider.dart';
import 'package:graduation_project/Provider/students_academic_results_provider.dart';
import 'package:graduation_project/Provider/students_attendance_schedule_provider.dart';
import 'package:graduation_project/Provider/students_data_provider.dart';
import 'package:graduation_project/Provider/year_result.dart';
import 'package:graduation_project/pages/Student_Academiv_result_affairs/students_academic_results.dart';
import 'package:graduation_project/presentation/widgets/widgets/Educational_Data_provider.dart';
import 'package:provider/provider.dart';

import '../Pages/library/available_devices_responsive.dart';
import '../Provider/study_fees_provider.dart';
import 'authchecker.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        // ChangeNotifierProvider<MaterialsTableProvider>(
        //   create: (_) => MaterialsTableProvider(),
        // ),
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
        ChangeNotifierProvider<ChatProvider>(
          create: (_) => ChatProvider(),
        ),
        ChangeNotifierProvider<ConversationsProvider>(
          create: (_) => ConversationsProvider(),
        ),
        ChangeNotifierProvider<DevicesProvider>(
          create: (_) => DevicesProvider(),
        ),
        ChangeNotifierProvider<BooksProvider>(
          create: (_) => BooksProvider(),
        ),
        ChangeNotifierProvider<Affairs_Side_Menue_provider>(
          create: (_) => Affairs_Side_Menue_provider(),
        ),
        ChangeNotifierProvider<TeacherScedueScreenProvider>(
          create: (_) => TeacherScedueScreenProvider(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: const Locale(
            "ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
        debugShowCheckedModeBanner: false,
        home: AuthChecker(),
      ),
    );
  }
}
