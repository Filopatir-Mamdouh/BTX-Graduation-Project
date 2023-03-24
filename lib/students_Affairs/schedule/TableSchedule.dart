import 'package:btxproject2/students_Affairs/educationData/main_screen_educationData.dart';
import 'package:btxproject2/students_Affairs/essensialData/main_screen_essentialData.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class TableSchedule extends StatelessWidget {
  const TableSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    var dropdownValue;
    Size _size = MediaQuery.of(context).size;
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
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text("الجدول الدراسي"),
        ),
        Row(
          children: [
            Column(
              children: [
                Text("الفرقة"),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white,
                  ),
                  width: 83,
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
                                        MainScreen_educationData(),
                                  ));
                              break;
                            case "النتائج الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "نسبة الحضور":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "الرسوم الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "استخراج مستند":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
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
              ],
            ),
            Column(
              children: [
                Text("القسم"),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white,
                  ),
                  width: 83,
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
                                        MainScreen_educationData(),
                                  ));
                              break;
                            case "النتائج الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "نسبة الحضور":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "الرسوم الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "استخراج مستند":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
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
              ],
            ),
            Column(
              children: [
                Text("الشعبة"),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white,
                  ),
                  width: 83,
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
                                        MainScreen_educationData(),
                                  ));
                              break;
                            case "النتائج الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "نسبة الحضور":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "الرسوم الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
                                  ));
                              break;
                            case "استخراج مستند":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MainScreen_essentialData(),
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
          ],
        ),
        Container()
      ]),
    );
  }
}
