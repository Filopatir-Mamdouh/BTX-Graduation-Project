// ignore_for_file: prefer_const_constructors, dead_code

import 'dart:ui';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

import 'dart:html';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/Login&register/LoginPage_class.dart';
import 'package:graduation_project/responsive.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController page = PageController();
  late final String title;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        mobile: (Row(
          children: [
            Expanded(
              flex: 6,
              child: LoginPage_class(),
            )
          ],
        )),
        desktop: Row(
          children: [
            Expanded(
              flex: 6,
              child: LoginPage_class(),
            ),
          ],
        ),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: LoginPage_class(),
            ),
          ],
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
