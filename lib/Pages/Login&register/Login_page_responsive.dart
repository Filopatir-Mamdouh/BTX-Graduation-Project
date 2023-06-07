// ignore_for_file: prefer_const_constructors, dead_code
import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Login&register/LoginPage_class.dart';
import 'package:graduation_project/constant/responsive.dart';

class LoginPage extends StatelessWidget {
  PageController page = PageController();
  late final String title;

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: (Row(
          children: [
            Expanded(
              flex: 6,
              child: LoginPageClass(),
            )
          ],
        )),
        desktop: Row(
          children: [
            Expanded(
              flex: 6,
              child: LoginPageClass(),
            ),
          ],
        ),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: LoginPageClass(),
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
