// ignore_for_file: prefer_const_constructors, dead_code
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/pages/Teacher_Basic_Data/Teacher_Basic_Data.dart';
import 'package:graduation_project/constant/responsive.dart';

import '../../constant/drawer/lecturers_drawer.dart';

class Teacher_Basic_Data_responsive extends StatelessWidget {
  PageController page = PageController();
  late final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          title: 'lecturer Basic Data',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            // Arabic
            Locale('ar'),
          ],
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
            body: BasicDataScreen(),
            appBar: AppBar(
              backgroundColor: Color(0xFF3E6BA9), // Will work
              title: Row(
                children: [
                  Image.asset('b3.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  Text("المحاضرون"),
                ],
              ),
            ),
            drawer: Drawer(
              child: DrawerLecturers(),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          title: 'lecturer Basic Data',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            // Arabic
            Locale('ar'),
          ],
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
                  child: DrawerLecturers(),
                ),
                Flexible(
                  flex: 6,
                  child: BasicDataScreen(),
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
                  Text("المحاضرون"),
                ],
              ),
            ),
          ),
        ),
        tablet: MaterialApp(
          title: 'lecturer Basic Data',
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            // Arabic
            Locale('ar'),
          ],
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
                  child: DrawerLecturers(),
                ),
                Flexible(
                  flex: 6,
                  child: BasicDataScreen(),
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
                  Text("المحاضرون"),
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
