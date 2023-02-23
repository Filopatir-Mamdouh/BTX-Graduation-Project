import 'dart:html';
import 'package:btxproject2/educationData/educationData.dart';
import 'package:btxproject2/educationData/main_screen_educationData.dart';
import 'package:btxproject2/essensialData/essentialData.dart';
import 'package:btxproject2/essensialData/main_screen_essentialData.dart';
import 'package:flutter/material.dart';

class sidemenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color grey_text = Color(0xFF707070);
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: grey_text),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Image.asset("logo2.png"),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text("احمد ",
                        style: TextStyle(
                            color: grey_text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text("خالد حسن ابو الليل",
                        style: TextStyle(
                            color: grey_text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              child: Center(
                child: Text("الفرقة الرابعه",
                    style: TextStyle(color: grey_text, fontSize: 16)),
              ),
            ),
            SizedBox(
              child: Center(
                child: Text("S/W development Trak",
                    style: TextStyle(color: grey_text, fontSize: 15)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 310,
              height: 1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: grey_text),
                borderRadius: const BorderRadius.all(Radius.circular(1)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
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
                Navigator.push(
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
