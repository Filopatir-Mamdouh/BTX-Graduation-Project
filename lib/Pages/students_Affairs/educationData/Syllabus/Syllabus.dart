// ignore_for_file: non_constant_identifier_names, sort_child_properties_last, avoid_types_as_parameter_names, duplicate_ignore, avoid_unnecessary_containers, file_names

import 'package:graduation_project/constant/Constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:provider/provider.dart';

class Syllabus extends StatelessWidget {
  const Syllabus({super.key});

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
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
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: color1)),
                  child: Column(
                    children: [
                      // ignore: avoid_types_as_parameter_names
                      Consumer<Semester>(builder: (context, Semester, child) {
                        return ExpandablePanel(
                          collapsed: const SizedBox(height: 0),
                          header: const Padding(
                            padding: EdgeInsets.only(top: 5, right: 3),
                            child: Text("منهج السنة الدراسية الرابعة"),
                          ),
                          expanded: Container(
                            padding: size.width > 450
                                ? const EdgeInsets.all(40)
                                : const EdgeInsets.only(top: 40),
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
                                          child: Text("ترم أول",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                          child: Text("ترم ثان",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                const SizedBox(
                                  height: 10,
                                ),
                                SafeArea(
                                  child: Container(
                                    width: 500,
                                    height: 500,
                                    padding: size.width > 450
                                        ? const EdgeInsets.all(40)
                                        : const EdgeInsets.only(top: 40),
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
                          collapsed: const SizedBox(height: 0),
                          header: const Padding(
                            padding: EdgeInsets.only(top: 5, right: 5),
                            child: Text("منهج السنة الدراسية الرابعة"),
                          ),
                          expanded: Container(
                            padding: size.width > 450
                                ? const EdgeInsets.all(40)
                                : const EdgeInsets.only(top: 40),
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
                                          child: Text("ترم أول",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                          child: Text("ترم ثان",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                const SizedBox(
                                  height: 10,
                                ),
                                SafeArea(
                                  child: Container(
                                    width: 500,
                                    height: 500,
                                    padding: size.width > 450
                                        ? const EdgeInsets.all(40)
                                        : const EdgeInsets.only(top: 40),
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
                          collapsed: const SizedBox(height: 0),
                          header: const Padding(
                            padding: EdgeInsets.only(top: 5, right: 5),
                            child: Text("منهج السنة الدراسية الرابعة"),
                          ),
                          expanded: Container(
                            padding: size.width > 450
                                ? const EdgeInsets.all(40)
                                : const EdgeInsets.only(top: 40),
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
                                          child: Text("ترم أول",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                          child: Text("ترم ثان",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                const SizedBox(
                                  height: 10,
                                ),
                                SafeArea(
                                  child: Container(
                                    width: 500,
                                    height: 500,
                                    padding: size.width > 450
                                        ? const EdgeInsets.all(40)
                                        : const EdgeInsets.only(top: 40),
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
                          collapsed: const SizedBox(height: 0),
                          header: const Padding(
                            padding: EdgeInsets.only(top: 5, right: 5),
                            child: Text("منهج السنة الدراسية الرابعة"),
                          ),
                          expanded: Container(
                            padding: size.width > 450
                                ? const EdgeInsets.all(40)
                                : const EdgeInsets.only(top: 40),
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
                                          child: Text("ترم أول",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                          child: Text("ترم ثان",
                                              style: TextStyle(
                                                  fontSize: size.width <= 435
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
                                const SizedBox(
                                  height: 10,
                                ),
                                SafeArea(
                                  child: Container(
                                    width: 500,
                                    height: 500,
                                    padding: size.width > 450
                                        ? const EdgeInsets.all(40)
                                        : const EdgeInsets.only(top: 40),
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
        ));
  }
}

Container Syllabus_Scaffold = Container(
  child: const Syllabus(),
);
