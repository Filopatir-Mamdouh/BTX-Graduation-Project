import 'package:btxproject2/Pages/HomeLecturers/Doctor/Attendance/main_screen_Doctor.dart';
import 'package:btxproject2/Pages/students_Affairs/Home/Main_Screen_Home.dart';
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
    return const MaterialApp(
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
      debugShowCheckedModeBanner: false,
      home: Main_Screen_Home(),
    );
  }
}
