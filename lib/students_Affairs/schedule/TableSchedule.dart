// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types

import 'package:btxproject2/consatant/Constant.dart';
import 'package:btxproject2/students_Affairs/educationData/main_screen_educationData.dart';
import 'package:btxproject2/students_Affairs/essensialData/main_screen_essentialData.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class TableSchedule extends StatelessWidget {
  const TableSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');

    Size size = MediaQuery.of(context).size;
    var dropdownValue;
    List<String> Team = [
      "الأولى",
      "الثانية",
      "الثالثة",
      "الرابعة",
    ];
    List<String> div = [
      "البيانات الأساسية",
      "النتائج الدراسية",
      "نسبة الحضور",
      "الرسوم الدراسية",
      "استخراج مستند"
    ];
    List<String> Section = [
      "البيانات الأساسية",
      "النتائج الدراسية",
      "نسبة الحضور",
      "الرسوم الدراسية",
      "استخراج مستند"
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Center(
              child: Text("الجدول الدراسي"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("الفرقة"),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.white,
                ),
                width: 70,
                height: 30,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    // CANT SET THE DEFAULT VALUE**
                    isExpanded: true,
                    onChanged: (String? newValue) {
                      if (newValue != dropdownValue) {
                        switch (newValue) {
                          case "البيانات الأساسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_educationData(),
                                ));
                            break;
                          case "النتائج الدراسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "نسبة الحضور":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "الرسوم الدراسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "استخراج مستند":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                        }
                      }
                    },
                    alignment: AlignmentDirectional.center,
                    dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25))),
                    buttonStyleData: ButtonStyleData(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25))),

                    items: Team.map((String items) {
                      return DropdownMenuItem(
                          value: items, child: Center(child: Text(items)));
                    }).toList(),
                  ),
                ),
              ),
              const Text("القسم"),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.white,
                ),
                width: 70,
                height: 30,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    // CANT SET THE DEFAULT VALUE**
                    isExpanded: true,

                    onChanged: (String? newValue) {
                      if (newValue != dropdownValue) {
                        switch (newValue) {
                          case "البيانات الأساسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_educationData(),
                                ));
                            break;
                          case "النتائج الدراسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "نسبة الحضور":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "الرسوم الدراسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "استخراج مستند":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                        }
                      }
                    },
                    alignment: AlignmentDirectional.center,
                    dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25))),
                    buttonStyleData: ButtonStyleData(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25))),

                    items: div.map((String items) {
                      return DropdownMenuItem(
                          value: items, child: Center(child: Text(items)));
                    }).toList(),
                  ),
                ),
              ),
              const Text("الشعبة"),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.white,
                ),
                width: 70,
                height: 30,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    // CANT SET THE DEFAULT VALUE**
                    isExpanded: true,

                    onChanged: (String? newValue) {
                      if (newValue != dropdownValue) {
                        switch (newValue) {
                          case "البيانات الأساسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_educationData(),
                                ));
                            break;
                          case "النتائج الدراسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "نسبة الحضور":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "الرسوم الدراسية":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                          case "استخراج مستند":
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainScreen_essentialData(),
                                ));
                            break;
                        }
                      }
                    },
                    alignment: AlignmentDirectional.center,
                    dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25))),
                    buttonStyleData: ButtonStyleData(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25))),

                    items: Section.map((String items) {
                      return DropdownMenuItem(
                          value: items, child: Center(child: Text(items)));
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 490,
            decoration:
                BoxDecoration(border: Border.all(width: 3, color: color1)),
            child: RotatedBox(
                quarterTurns: size.width < 700 ? 1 : 0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            Expanded(flex: 2, child: Text("اليوم/الفترة")),
                            Expanded(flex: 1, child: Text("8-9")),
                            Expanded(flex: 1, child: Text("9-10")),
                            Expanded(flex: 1, child: Text("10-11")),
                            Expanded(flex: 1, child: Text("11-12")),
                            Expanded(flex: 1, child: Text("12-1")),
                            Expanded(flex: 1, child: Text("1-2")),
                            Expanded(flex: 1, child: Text("2-3")),
                            Expanded(flex: 1, child: Text("3-4")),
                            Expanded(flex: 1, child: Text("4-5")),
                            Expanded(flex: 1, child: Text("5-6")),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [
                            Expanded(flex: 2, child: Text("السبت"))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [Text("الأحد")],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [Text("الإثنين")],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [Text("الثلاثاء")],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [Text("الأربعاء")],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: const [Text("الخميس")],
                        ),
                      )
                    ],
                  ),
                )),
          )
        ]),
      ),
    );
  }
}

class subject_table_Schedule extends StatelessWidget {
  const subject_table_Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [],
      ),
    );
  }
}

class craete_Row_table extends StatelessWidget {
  const craete_Row_table({super.key});

  @override
  Widget build(BuildContext context) {
    int toWhite;
    int from = 8;
    int to = 9;
    int fromTo = to - from;
    return Row(
      children: const [
        // from !=8?Expanded(child: Text(""))
      ],
    );
  }
}
