import 'dart:html';

import 'package:btxproject2/consatant/Constant.dart';
import 'package:btxproject2/Licturers/HomeLecturers/Doctor/doctor.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/students_Affairs/educationData/Syllabus/Lecture.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:provider/provider.dart';

class Syllabus extends StatelessWidget {
  const Syllabus({super.key});

  @override
  Widget build(BuildContext context) {
    Size? _size = MediaQuery.of(context).size;
    Container _Scaffold_Syllabus = Container();
    final Color color1 = HexColor('#3E6BA9');
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ScaffoldDataEducation(),
          ),
          ChangeNotifierProvider(
            create: (context) => StudentDetails(),
          ),
          ChangeNotifierProvider(
            create: (context) => Semester(),
          ),
        ],
        child: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: color1)),
                    child: Column(
                      children: [
                        Consumer<Semester>(builder: (context, Semester, child) {
                          return ExpandablePanel(
                            collapsed: SizedBox(height: 0),
                            header: Padding(
                              padding: const EdgeInsets.only(top: 5, right: 3),
                              child: Text("منهج السنة الدراسية الرابعة"),
                            ),
                            expanded: Container(
                              padding: _size.width > 450
                                  ? EdgeInsets.all(40)
                                  : EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.first();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم أول",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.second();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم ثان",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SafeArea(
                                    child: Container(
                                      width: 500,
                                      height: 500,
                                      padding: _size.width > 450
                                          ? EdgeInsets.all(40)
                                          : EdgeInsets.only(top: 40),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: color1)),
                                      child: Semester.syllabus,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: color1)),
                    child: Column(
                      children: [
                        Consumer<Semester>(builder: (context, Semester, child) {
                          return ExpandablePanel(
                            collapsed: SizedBox(height: 0),
                            header: Padding(
                              padding: const EdgeInsets.only(top: 5, right: 5),
                              child: Text("منهج السنة الدراسية الرابعة"),
                            ),
                            expanded: Container(
                              padding: _size.width > 450
                                  ? EdgeInsets.all(40)
                                  : EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.first();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم أول",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.second();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم ثان",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SafeArea(
                                    child: Container(
                                      width: 500,
                                      height: 500,
                                      padding: _size.width > 450
                                          ? EdgeInsets.all(40)
                                          : EdgeInsets.only(top: 40),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: color1)),
                                      child: Semester.syllabus,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: color1)),
                    child: Column(
                      children: [
                        Consumer<Semester>(builder: (context, Semester, child) {
                          return ExpandablePanel(
                            collapsed: SizedBox(height: 0),
                            header: Padding(
                              padding: const EdgeInsets.only(top: 5, right: 5),
                              child: Text("منهج السنة الدراسية الرابعة"),
                            ),
                            expanded: Container(
                              padding: _size.width > 450
                                  ? EdgeInsets.all(40)
                                  : EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.first();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم أول",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.second();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم ثان",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SafeArea(
                                    child: Container(
                                      width: 500,
                                      height: 500,
                                      padding: _size.width > 450
                                          ? EdgeInsets.all(40)
                                          : EdgeInsets.only(top: 40),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: color1)),
                                      child: Semester.syllabus,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: color1)),
                    child: Column(
                      children: [
                        Consumer<Semester>(builder: (context, Semester, child) {
                          return ExpandablePanel(
                            collapsed: SizedBox(height: 0),
                            header: Padding(
                              padding: const EdgeInsets.only(top: 5, right: 5),
                              child: Text("منهج السنة الدراسية الرابعة"),
                            ),
                            expanded: Container(
                              padding: _size.width > 450
                                  ? EdgeInsets.all(40)
                                  : EdgeInsets.only(top: 40),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.first();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم أول",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterOne ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Semester.second();
                                              Semester.sub();
                                            },
                                            child: new Text("ترم ثان",
                                                style: TextStyle(
                                                    fontSize: _size.width <= 435
                                                        ? 9
                                                        : 15)),
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? color1
                                                      : Colors.white,
                                              backgroundColor:
                                                  Semester.changeStyleSemesterTwo ==
                                                          true
                                                      ? Colors.white
                                                      : color1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SafeArea(
                                    child: Container(
                                      width: 500,
                                      height: 500,
                                      padding: _size.width > 450
                                          ? EdgeInsets.all(40)
                                          : EdgeInsets.only(top: 40),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 3, color: color1)),
                                      child: Semester.syllabus,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Container Syllabus_Scaffold = Container(
  child: Syllabus(),
);
