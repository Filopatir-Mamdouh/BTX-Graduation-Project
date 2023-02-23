// ignore_for_file: prefer_const_constructors, dead_code

import 'dart:ui';

import 'package:bt_x/Documents_Request/Documents_request_class.dart';
import 'package:bt_x/Exams_table/Exams_table_class.dart';
import 'package:bt_x/Study_result_page/study_result_class.dart';

import 'package:bt_x/affairs_main_page/affairs_side_menue.dart';
import 'package:bt_x/responsive_page/responsive.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

import 'dart:html';

import 'package:flutter_localizations/flutter_localizations.dart';

class Exams_table_page extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController page = PageController();
  late final String title;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          title: 'Exams Table',
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
            body: Exams_tables_class(),
            appBar: AppBar(
              backgroundColor: Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("شئون الطلاب"),
                ],
              ),
            ),
            drawer: Drawer(
              child: Container(
                child: sidemenu(),
              ),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          title: 'Exams Table',
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
            body: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    child: sidemenu(),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    child: Exams_tables_class(),
                  ),
                ),
              ],
            ),
            appBar: AppBar(
              backgroundColor: Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("شئون الطلاب"),
                ],
              ),
            ),
          ),
        ),
        tablet: MaterialApp(
          title: 'Exams Table',
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
            body: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    child: sidemenu(),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    child: Exams_tables_class(),
                  ),
                )
              ],
            ),
            appBar: AppBar(
              backgroundColor: Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("شئون الطلاب"),
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
