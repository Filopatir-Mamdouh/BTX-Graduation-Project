import 'dart:html';

import 'package:flutter/material.dart';
import 'package:graduation_project/Documents_Request/Documents_request_page.dart';
import 'package:graduation_project/Exams_table/Exams_table.dart';
import 'package:graduation_project/Study_result_page/study_result_responsive.dart';
import 'package:graduation_project/constants/constants.dart';
import 'package:graduation_project/fees_page/fees_page_responsive.dart';
import 'package:graduation_project/presentation/provider/side_Menue_provider.dart';
import 'package:graduation_project/study_table/stydy_table_Responsive.dart';

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
                  child: Image.asset("${Side_Menue_provider().Student_Image}"),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text("${Side_Menue_provider().Student_Name}",
                        style: TextStyle(
                            color: grey_text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text("${Side_Menue_provider().Father_Name}",
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
                child: Text("${Side_Menue_provider().year}",
                    style: TextStyle(color: grey_text, fontSize: 16)),
              ),
            ),
            SizedBox(
              child: Center(
                child: Text("${Side_Menue_provider().Section}",
                    style: TextStyle(
                        color: grey_text,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
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
              onPressed: () {},
              child: Text(
                'البيانات الاساسية',
                style: TextStyle(color: grey_text, fontSize: 17),
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
                'البيانات التعليمية',
                style: TextStyle(color: grey_text, fontSize: 17),
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
                      builder: (context) => Study_table_Responsive()),
                );
              },
              child: Text(
                'الجدول الدراسي',
                style: TextStyle(color: grey_text, fontSize: 17),
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
                  MaterialPageRoute(builder: (context) => Exams_table_page()),
                );
              },
              child: Text(
                'جدول الامتحانات',
                style: TextStyle(color: grey_text, fontSize: 17),
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
                      builder: (context) => fess_page_Responsive()),
                );
              },
              child: Text(
                "الرسوم الدراسية",
                style: TextStyle(color: grey_text, fontSize: 17),
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
                      builder: (context) => Study_Result_Responsive()),
                );
              },
              child: Text(
                "النتائج الدراسية",
                style: TextStyle(color: grey_text, fontSize: 17),
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
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => documents_request_page()),
                );
              },
              child: Text(
                "طلب مستندات",
                style: TextStyle(color: grey_text, fontSize: 17),
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
                style: TextStyle(color: grey_text, fontSize: 17),
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