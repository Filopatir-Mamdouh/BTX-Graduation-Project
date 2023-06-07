// ignore_for_file: prefer_const_constructors, dead_code
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/pages/affairs_main_page/side_menue.dart';
import 'package:graduation_project/pages/lecture_info/lecturers_informations_screen.dart';
import 'package:graduation_project/constant/responsive.dart';

class Lecture_information_Responsive extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController page = PageController();

  late final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          title: 'Student Result',
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
            body: LecturersInformationsScreen(),
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
                child: Sidemenu(),
              ),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          title: 'Study Fees',
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
                    child: LecturersInformationsScreen(),
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
          title: 'Study Result',
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
                    child: LecturersInformationsScreen(),
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
