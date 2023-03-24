import 'dart:html';
import 'package:btxproject2/students_Affairs/educationData/educationData.dart';
import 'package:btxproject2/students_Affairs/educationData/main_screen_educationData.dart';
import 'package:btxproject2/students_Affairs/essensialData/essentialData.dart';
import 'package:btxproject2/students_Affairs/essensialData/main_screen_essentialData.dart';
import 'package:flutter/material.dart';

class sidemenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(""), fit: BoxFit.cover),
                      ),
                      currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage(
                            "",
                          )),
                      accountName: Text("احمد ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                      accountEmail: Text(
                        "خالد حسن ابو الليل",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreen_essentialData()));
              },
              child: Text(
                'البيانات الاساسية',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreen_educationData()));
              },
              child: Text(
                'البيانات التعليمية',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'الجدول الدراسي',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'جدول الامتحانات',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "الرسوم الدراسية",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "النتائج الدراسية",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "طلب مستندات",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "تسجيل الخروج",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                primary: Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
