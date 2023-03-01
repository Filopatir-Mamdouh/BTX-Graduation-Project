import 'package:bt_x/Study_result_page/Result_drop_down.dart';
import 'package:bt_x/constants/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class colorss {
  Color ItemsColor = const Color(0xFF3E6BA9);
  Color miainColor = const Color(0xFF707070);
  //there will be other colors here
}

class study_result_class extends StatefulWidget {
  const study_result_class({super.key});

  @override
  State<study_result_class> createState() => _testState();
}

class _testState extends State<study_result_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "النتيجة الدراسية",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF707070)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: const BorderRadius.all(Radius.circular(1)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "السنة الدراسية",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF707070)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),

                      //this is Drop down menu

                      Container(
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1)),
                        ),
                        child: DropdownButtonExample(),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: 400,
                  height: 500,
                  decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Color(0xFF3E6BA9)),
                    borderRadius: const BorderRadius.all(Radius.circular(1)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 9,
                      ),
                      Center(
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            SizedBox(
                              width: 18,
                            ),
                            const Text(
                              "المقرر الدراسي",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF707070)),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            const Text(
                              "الدرجة",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF707070)),
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            const Text(
                              "التقدير",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF707070)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 350,
                        height: 380,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 3, color: Color(0xFF3E6BA9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1)),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 22,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    "المادة",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 113,
                                  ),
                                  const Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  const Text(
                                    "جيد جدا",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3E6BA9)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          const Text(
                            "المجموع",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                          const SizedBox(
                            width: 102,
                          ),
                          const Text(
                            "التقدير",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          const Text(
                            "النسبة",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF707070)),
                          ),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            width: 18,
                          ),
                          const Text(
                            "1600",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3E6BA9)),
                          ),
                          const SizedBox(
                            width: 123,
                          ),
                          const Text(
                            "جيد جدا",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3E6BA9)),
                          ),
                          const SizedBox(
                            width: 77,
                          ),
                          const Text(
                            "99.99%",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3E6BA9)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
