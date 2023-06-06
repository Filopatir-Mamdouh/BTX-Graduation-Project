// ignore_for_file: prefer_const_constructors, dead_code

import 'dart:ui';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

import 'dart:html';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/pages/Lecture_Attendance/Lecture_Attendance_Desk_Tablet.dart';
import 'package:graduation_project/pages/Lecture_Attendance/lecturers_attendance_schedule_screen.dart';
import 'package:graduation_project/pages/affairs_main_page/side_menue.dart';
import 'package:graduation_project/Pages/library/available_devices_screen.dart';
import 'package:graduation_project/consatant/responsive.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/Pages/library/books_screen.dart';

class books_responsive extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController page = PageController();

  late final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          title: 'المكتبة',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              new Container(
                height: 25,
                color: AppColors.grey,
                child: Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: BooksScreen(),
            appBar: AppBar(
              backgroundColor: AppColors.grey, // Will work
              title: Row(
                children: [
                  Image.asset('b2.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("المكتبة"),
                ],
              ),
            ),
            drawer: Drawer(
              child: Container(
                child: Sidemenu(),
              ),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          title: 'المكتبة',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              new Container(
                height: 25,
                color: AppColors.grey,
                child: Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    child: Sidemenu(),
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    child: BooksScreen(),
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              backgroundColor: AppColors.grey, // Will work
              title: Row(
                children: [
                  Image.asset('b2.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("المكتبة"),
                ],
              ),
            ),
          ),
        ),
        tablet: MaterialApp(
          title: 'المكتبة',
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            // Arabic
            Locale('ar'),
          ],
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              new Container(
                height: 25,
                color: AppColors.grey,
                child: Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    child: Sidemenu(),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    child: BooksScreen(),
                  ),
                )
              ],
            ),
            appBar: AppBar(
              backgroundColor: AppColors.grey, // Will work
              title: Row(
                children: [
                  Image.asset('b2.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("المكتبة"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Color(0xffaa44aa)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(200, 200), 100, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
