// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class colorss {
  Color ItemsColor = const Color(0xFF1E6BA9);
  Color miainColor = const Color(0xFF707070);
  //there will be other colors here
}

class study_table_class extends StatelessWidget {
  const study_table_class({super.key});

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
                height: 8,
              ),
              const Center(
                child: Text(
                  "الجدول الدراسي",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 550,
                        height: 1150,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 10, color: Color(0xFF1E6BA9)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1)),
                        ),
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(10),
                          child: Table(
                            defaultColumnWidth: FixedColumnWidth(20),
                            border: TableBorder.all(
                                color: Color.fromARGB(255, 255, 255, 255),
                                style: BorderStyle.solid,
                                width: 2),
                            children: [
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '6-5',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '5-4',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '4-3',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '3-2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '2-1',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '1-12',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '12-11',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '11-10',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '10-9',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        '9-8',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'Hello World!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'windows\nprogramming',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF1E6BA9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'الفترة/اليوم',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'السبت',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'الحد',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'الاثنين',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'الثلاثاء',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'الأربعاء',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: TableCell(
                                    child: const RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(
                                        'الخميس',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFF707070)),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
              SizedBox(
                height: 1,
              ),
              Container(
                width: 550,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 0, color: Color.fromARGB(255, 255, 255, 255)),
                  borderRadius: const BorderRadius.all(Radius.circular(1)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Row(
                    children: [
                      TextButton(
                        child: Text(
                          "تحميل الجدول",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.red),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      TextButton(
                        child: Text(
                          "جدول القاعات",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Color.fromARGB(210, 0, 0, 0)),
                        ),
                        onPressed: () {},
                      ),
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
