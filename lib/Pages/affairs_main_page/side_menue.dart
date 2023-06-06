import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Documents_Request/Documents_request_responsive.dart';
import 'package:graduation_project/provider/Affairs_side_Menue_provider.dart';
import 'package:graduation_project/Pages/Exams_table/Exams_table.dart';
import 'package:graduation_project/Pages/Study_result_page/study_result_responsive.dart';
import 'package:graduation_project/Pages/chat/constants/constants.dart';
import 'package:graduation_project/Pages/fees_page/fees_page_responsive.dart';

import 'package:graduation_project/Pages/study_table/stydy_table_Responsive.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: grey_text),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Image.asset(
                      "${Affairs_Side_Menue_provider().Student_Image}"),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text(Affairs_Side_Menue_provider().Student_Name,
                        style: TextStyle(
                            color: grey_text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text(Affairs_Side_Menue_provider().Father_Name,
                        style: TextStyle(
                            color: grey_text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              child: Center(
                child: Text(Affairs_Side_Menue_provider().year,
                    style: TextStyle(color: grey_text, fontSize: 16)),
              ),
            ),
            SizedBox(
              child: Center(
                child: Text(Affairs_Side_Menue_provider().Section,
                    style: TextStyle(
                        color: grey_text,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 310,
              height: 1,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: grey_text),
                borderRadius: const BorderRadius.all(Radius.circular(1)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                'البيانات الاساسية',
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                'البيانات التعليمية',
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
            const SizedBox(
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
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                'الجدول الدراسي',
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Exams_table_page()),
                );
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                'جدول الامتحانات',
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
            const SizedBox(
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
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                "الرسوم الدراسية",
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
            const SizedBox(
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
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                "النتائج الدراسية",
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => documents_request_page_resposive()),
                );
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                "طلب مستندات",
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                side: const BorderSide(width: 2, color: Colors.black),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                "تسجيل الخروج",
                style: TextStyle(color: grey_text, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
