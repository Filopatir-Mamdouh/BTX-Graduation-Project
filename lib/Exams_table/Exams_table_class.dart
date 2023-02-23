import 'package:bt_x/Study_result_page/Result_drop_down.dart';
import 'package:bt_x/constants/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Exams_tables_class extends StatefulWidget {
  const Exams_tables_class({super.key});

  @override
  State<Exams_tables_class> createState() => _testState();
}

class _testState extends State<Exams_tables_class> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "جدول الامتحانات",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF707070)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 430,
                height: 520,
                decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Color(0xFF3E6BA9)),
                  borderRadius: const BorderRadius.all(Radius.circular(1)),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "اليوم \n تاريخ الامتحان ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                            "توقيت الامتحان",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                          const SizedBox(
                            width: 39,
                          ),
                          const Text(
                            "المقرر الدراسي",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "الاربعاء\n 20/10/2022",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "12:00",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text(
                          "windows \n Programming ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "الاربعاء\n 20/10/2022",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "12:00",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text(
                          "windows \n Programming ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "الاربعاء\n 20/10/2022",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "12:00",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text(
                          "windows \n Programming ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "الاربعاء\n 20/10/2022",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "12:00",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text(
                          "windows \n Programming ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "الاربعاء\n 20/10/2022",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "12:00",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text(
                          "windows \n Programming ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "الاربعاء\n 20/10/2022",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "12:00",
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text(
                          "windows \n Programming ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        const Text(
                          "رقم الجلوس",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 65,
                        ),
                        const Text(
                          "اللجنة",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 85,
                        ),
                        const Text(
                          "مكان اللجنة",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),

                    //revvvvvvvvv

                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "201902002",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        const Text(
                          "لجنة 250",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                        const SizedBox(
                          width: 85,
                        ),
                        const Text(
                          "A115 ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E6BA9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              width: 450,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(width: 0, color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(1)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 85,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: TextButton(
                      child: Text(
                        "تحميل الجدول",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Colors.red),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 25,
              width: 1400,
              color: Color(0xFF3E6BA9),
              child: const Center(
                child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
