// ignore_for_file: prefer_const_constructors, dead_code

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/Pages/affairs_main_page/side_menue.dart';

import '../../constant/drawer/drawer_home.dart';
import '../../constant/responsive.dart';
import 'Material_Schedual_Desk_Tablet.dart';
import 'Material_Schedual_Screen.dart';

class MaterialsScheduleScreen_Responsive extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController page = PageController();

  late final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          title: 'Material Schedule',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: Color(0xFF3E6BA9),
                child: Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: MaterialTable(),
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
              child: DrawerHome(),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          title: 'Material Schedule',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: Color(0xFF3E6BA9),
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
              children: const [
                Flexible(
                  flex: 2,
                  child: DrawerHome(),
                ),
                Flexible(
                  flex: 7,
                  child: MaterialTable_Desk_tab(),
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
          title: 'Material Schedule',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: Color(0xFF3E6BA9),
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
              children: const [
                Flexible(
                  flex: 3,
                  child: DrawerHome(),
                ),
                Flexible(
                  flex: 6,
                  child: MaterialTable_Desk_tab(),
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
