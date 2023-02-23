// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'dart:ui';
import 'dart:math' as math;
import 'package:bt_x/constants/constants.dart';
import 'package:flutter/material.dart';

class colorss {
  Color ItemsColor = const Color(0xFF3E6BA9);
  Color miainColor = const Color(0xFF707070);
  //there will be other colors here
}

class Fees_page_class extends StatelessWidget {
  const Fees_page_class({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "الرسوم الدراسية",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF707070)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 450,
                height: 610,
                decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Color(0xFF3E6BA9)),
                  borderRadius: const BorderRadius.all(Radius.circular(1)),
                ),
                child: Row(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "الإجمالي",
                          style: TextStyle(
                              fontSize: 16, color: colorss().miainColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "تاريخ السداد",
                          style: TextStyle(
                              fontSize: 16, color: colorss().miainColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "رقم الإيصال",
                          style: TextStyle(
                              fontSize: 16, color: colorss().miainColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "تاريخ الإذن",
                          style: TextStyle(
                              fontSize: 16, color: colorss().miainColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "رقم الإذن",
                          style: TextStyle(
                              fontSize: 16, color: colorss().miainColor),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "1098684585",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "2421412413",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "324133154",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "3453435345",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "234323454",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "et54523453",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "sfaf54645",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "4534523434",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "54636646",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "463646334",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "36564634",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "46356463",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "3466563654",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "6346535634",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "34653463",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "436564563",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "463645645",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "446346456",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "456364666",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                      SizedBox(
                        height: 99,
                      ),
                      new RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: new Text(
                          "6456363543",
                          style: TextStyle(
                              fontSize: 15, color: colorss().ItemsColor),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 25,
              width: 1800,
              color: Color(0xFF3E6BA9),
              child: const Center(
                child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
