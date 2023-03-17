import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/Doctor/main_screen_Doctor.dart';
import 'package:btxproject2/Home/HomeBage.dart';
import 'package:btxproject2/Home/Main_Screen_Home.dart';
import 'package:btxproject2/educationData/%D9%8DSyllabus/Syllabus.dart';
import 'package:btxproject2/educationData/educationData.dart';
import 'package:btxproject2/essensialData/essentialData.dart';
import 'package:btxproject2/essensialData/main_screen_essentialData.dart';
import 'package:btxproject2/educationData/main_screen_educationData.dart';
import 'package:btxproject2/Doctor/qr.dart';
import 'package:btxproject2/Doctor/scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
