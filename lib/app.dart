// import 'package:bt_x/Study_result_page/study_result.dart';
// import 'package:bt_x/Study_result_page/study_result_class.dart';
// import 'package:bt_x/fees_page/fees_class.dart';
// import 'package:bt_x/fees_page/fees_page.dart';
// import 'package:bt_x/presentation/provider/students_academic_results_provider.dart';
// import 'package:bt_x/presentation/provider/students_attendance_schedule_provider.dart';
// import 'package:bt_x/presentation/provider/study_fees_provider.dart';
// import 'package:bt_x/presentation/screens/basic_informations_screen.dart';
// import 'package:bt_x/presentation/screens/students_academic_results.dart';
// import 'package:bt_x/presentation/screens/students_attendance_schedule_screen.dart';
// import 'package:bt_x/presentation/screens/study_fees_screen.dart';
// import './responsive_page/responsive.dart';
// import 'package:bt_x/rrr.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

// import 'package:provider/provider.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<StudyFeesProvider>(
//           create: (_) => StudyFeesProvider(),
//         ),
//         ChangeNotifierProvider<StudentsAcademicResultsProvider>(
//           create: (_) => StudentsAcademicResultsProvider(),
//         ),
//         ChangeNotifierProvider<StudentsAttendanceScheduleProvider>(
//           create: (_) => StudentsAttendanceScheduleProvider(),
//         ),
//       ],
//       child: const MaterialApp(
//         localizationsDelegates: [
//           GlobalMaterialLocalizations.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           GlobalCupertinoLocalizations.delegate,
//         ],
//         supportedLocales: [
//           // English
//           Locale('ar'),
//         ],
//         debugShowCheckedModeBanner: false,
//         home: fess_page(),
//       ),
//     );
//   }
// }
