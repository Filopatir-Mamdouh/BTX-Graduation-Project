//

import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Conversations/conversation.dart';
import 'package:graduation_project/Pages/Conversations/conversation_model.dart';
import 'package:graduation_project/Pages/Data_Screen/Data_Screen_Desk_tablet.dart';
import 'package:graduation_project/Pages/TeacherSceduleScreen/TeacherSceduleScreen.dart';
import 'package:graduation_project/provider/document_request_provider.dart';
import 'package:graduation_project/provider/inquiries_provider.dart';
import 'package:graduation_project/provider/schedual_subject_provider.dart';
import 'package:graduation_project/Pages/Documents_Request/Documents_request_responsive.dart';

import 'package:graduation_project/Pages/Data_Screen/Data_screen_responsive.dart';
import 'package:graduation_project/provider/Doctor_student_Attendance_Provider.dart';
import 'package:graduation_project/Pages/Doctor_student_attendance/Doctor_student_attendance_responsive.dart';
import 'package:graduation_project/Pages/Educational%20_Data/Educational_Data_Screen_Responsive.dart';
import 'package:graduation_project/Pages/Exams_table/Exams_table.dart';
import 'package:graduation_project/Pages/Exams_table/Exams_table_class.dart';
import 'package:graduation_project/Pages/Lecture_Attendance/Lecture_Attendance_table_responsive.dart';
import 'package:graduation_project/Pages/Login&register/Login_page_responsive.dart';
import 'package:graduation_project/Pages/Login&register/Register_responsive.dart';
import 'package:graduation_project/Pages/Material_Schedual_Screen/Material_Schedual_Responsive.dart';
import 'package:graduation_project/Pages/Student_Academiv_result_affairs/Student_Academic_Result_Responsive.dart';
import 'package:graduation_project/Pages/Student_Attendance_Affairs/Student_Attendance_responsive.dart';
import 'package:graduation_project/Pages/Student_information_screen/Student_information_Responsive.dart';
import 'package:graduation_project/provider/Student_information_provider.dart';
import 'package:graduation_project/Pages/Students_Doctor_Results_Screeen/Student_Doctor_resultResponsive.dart';
import 'package:graduation_project/Pages/Study_fees_affairs/Affairs_Study_fees_Responsive.dart';
import 'package:graduation_project/Pages/Study_result_page/study_result_responsive.dart';
import 'package:graduation_project/provider/TeacherSceduleProvider.dart';
import 'package:graduation_project/Pages/TeacherSceduleScreen/TeacherSceduleResponsive.dart';
import 'package:graduation_project/Pages/Teacher_Basic_Data/Teacher_Basic_Data.dart';
import 'package:graduation_project/Pages/Teacher_Basic_Data/Teacher_Basic_Data_responsive.dart';
import 'package:graduation_project/Pages/affairs_main_page/affairs_body_class.dart';
import 'package:graduation_project/Pages/affairs_main_page/affairs_main.dart';
import 'package:graduation_project/Pages/basic_info/Basic_info_responsive.dart';
import 'package:graduation_project/Pages/chat/chat_screen.dart';
import 'package:graduation_project/Pages/Conversations/conversations_responsive.dart';
import 'package:graduation_project/Pages/Conversations/conversations_screen.dart';
import 'package:graduation_project/Pages/chat/other_chat_bubble.dart';
import 'package:graduation_project/Pages/fees_page/fees_page_responsive.dart';
import 'package:graduation_project/Pages/inquiries/inquiries_responsive.dart';
import 'package:graduation_project/Pages/lecture_info/lecture_informationresponsive.dart';
import 'package:graduation_project/Pages/library/available_devices_responsive.dart';
import 'package:graduation_project/Pages/library/books_responsive.dart';
import 'package:graduation_project/Pages/library/books_screen.dart';
import 'package:graduation_project/provider/Taecher_Basic_Data_provider.dart';
import 'package:graduation_project/provider/basic_informations_provider.dart';
import 'package:graduation_project/provider/books_provider.dart';
import 'package:graduation_project/provider/chat/chat_provider.dart';
import 'package:graduation_project/provider/chat/conversations_provider.dart';
import 'package:graduation_project/provider/devices_provider.dart';
import 'package:graduation_project/provider/exam_schadule.dart';
import 'package:graduation_project/provider/fees_provider.dart';
import 'package:graduation_project/provider/lecture_schadule.dart';
import 'package:graduation_project/provider/lecturers_attendance_schedule_provider.dart';
import 'package:graduation_project/provider/lecturers_informations_provider.dart';
import 'package:graduation_project/provider/material_Schedule_provider.dart';
import 'package:graduation_project/provider/students_academic_results_provider.dart';
import 'package:graduation_project/provider/students_attendance_schedule_provider.dart';
import 'package:graduation_project/provider/students_data_provider.dart';
import 'package:graduation_project/provider/study_fees_provider.dart';
import 'package:graduation_project/provider/year_result.dart';
import 'package:graduation_project/presentation/widgets/widgets/Educational_Data_provider.dart';

import 'package:graduation_project/Pages/schedule/subject_table_screen.dart';

import 'package:graduation_project/Pages/schedule/subject_table_responsive.dart';

import 'package:provider/provider.dart';

import './responsive_page/responsive.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ], supportedLocales: [
        // English
        Locale('ar'),
      ], debugShowCheckedModeBanner: false, home: BasicDataScreen()),
    );
  }
}
