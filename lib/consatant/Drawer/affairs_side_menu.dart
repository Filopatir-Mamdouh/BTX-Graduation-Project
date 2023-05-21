// ignore_for_file: camel_case_types

import 'package:btxproject2/Pages/students_Affairs/educationData/main_screen_educationData.dart';
import 'package:btxproject2/Pages/students_Affairs/essensialData/main_screen_essentialData.dart';
import 'package:flutter/material.dart';

class sidemenu extends StatelessWidget {
  const sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage(
                            "assets/img/image1.png",
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
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MainScreen_essentialData()));
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
              child: const Text(
                'البيانات الاساسية',
                style: TextStyle(color: Colors.black, fontSize: 17),
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
                        builder: (context) =>
                            const MainScreen_educationData()));
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
              child: const Text(
                'البيانات التعليمية',
                style: TextStyle(color: Colors.black, fontSize: 17),
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
              child: const Text(
                'الجدول الدراسي',
                style: TextStyle(color: Colors.black, fontSize: 17),
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
              child: const Text(
                'جدول الامتحانات',
                style: TextStyle(color: Colors.black, fontSize: 17),
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
              child: const Text(
                "الرسوم الدراسية",
                style: TextStyle(color: Colors.black, fontSize: 17),
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
              child: const Text(
                "النتائج الدراسية",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 16,
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
              child: const Text(
                "طلب مستندات",
                style: TextStyle(color: Colors.black, fontSize: 17),
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
              child: const Text(
                "تسجيل الخروج",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
