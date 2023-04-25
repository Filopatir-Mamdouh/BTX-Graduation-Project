// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types

import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/students_Affairs/educationData/main_screen_educationData.dart';
import 'package:btxproject2/students_Affairs/essensialData/main_screen_essentialData.dart';
import 'package:btxproject2/students_Affairs/schedule/Days.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableSchedule extends StatelessWidget {
  const TableSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Tables(),
        ),
      ],
      child: Scaffold(
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
                size.width < 740
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("الفرقة"),
                          Consumer<Tables>(
                            builder: (context, model, child) {
                              return Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  color: Colors.white,
                                ),
                                width: size.width < 394 ? 70 : 81,
                                height: 30,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    // CANT SET THE DEFAULT VALUE**
                                    isExpanded: true,
                                    onChanged: (String? newValue) {
                                      if (newValue != model.dropdownValue) {
                                        switch (newValue) {
                                          case "الأولى":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_educationData(),
                                                ));
                                            break;
                                          case "الثانية":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "الثالثة":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "الرابعة":
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
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    buttonStyleData: ButtonStyleData(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25))),

                                    items: model.Team.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Center(
                                              child: Text(
                                            items,
                                            style: TextStyle(
                                                fontSize:
                                                    size.width < 394 ? 12 : 16),
                                          )));
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("الفرقة"),
                          Consumer<Tables>(
                            builder: (context, model, child) {
                              return Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  color: Colors.white,
                                ),
                                width: 81,
                                height: 30,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    // CANT SET THE DEFAULT VALUE**
                                    isExpanded: true,
                                    onChanged: (String? newValue) {
                                      if (newValue != model.dropdownValue) {
                                        switch (newValue) {
                                          case "الأولى":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_educationData(),
                                                ));
                                            break;
                                          case "الثانية":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "الثالثة":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "الرابعة":
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
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    buttonStyleData: ButtonStyleData(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25))),

                                    items: model.Team.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Center(
                                              child: Text(
                                            items,
                                            style: TextStyle(
                                                fontSize:
                                                    size.width < 394 ? 12 : 16),
                                          )));
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                size.width < 740
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("القسم"),
                          Consumer<Tables>(
                            builder: (context, model, child) {
                              return Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  color: Colors.white,
                                ),
                                width: size.width < 394 ? 138 : 179,
                                height: 30,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    // CANT SET THE DEFAULT VALUE**
                                    isExpanded: true,

                                    onChanged: (String? newValue) {
                                      if (newValue != model.dropdownValue) {
                                        switch (newValue) {
                                          case "تكنولوجيا المعلومات":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_educationData(),
                                                ));
                                            break;
                                          case "ميكاترونيكس":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "اطراف صناعيه":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "اوتوترونيكس":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "طاقه":
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
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    buttonStyleData: ButtonStyleData(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25))),

                                    items: model.Section.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Center(
                                              child: Text(
                                            items,
                                            style: TextStyle(
                                                fontSize:
                                                    size.width < 394 ? 12 : 16),
                                          )));
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("القسم"),
                          Consumer<Tables>(
                            builder: (context, model, child) {
                              return Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  color: Colors.white,
                                ),
                                width: 179,
                                height: 30,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    // CANT SET THE DEFAULT VALUE**
                                    isExpanded: true,

                                    onChanged: (String? newValue) {
                                      if (newValue != model.dropdownValue) {
                                        switch (newValue) {
                                          case "تكنولوجيا المعلومات":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_educationData(),
                                                ));
                                            break;
                                          case "ميكاترونيكس":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "اطراف صناعيه":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "اوتوترونيكس":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_essentialData(),
                                                ));
                                            break;
                                          case "طاقه":
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
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    buttonStyleData: ButtonStyleData(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25))),

                                    items: model.Section.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Center(
                                              child: Text(
                                            items,
                                            style: TextStyle(
                                                fontSize:
                                                    size.width < 394 ? 12 : 16),
                                          )));
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                size.width < 740
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("الشعبة"),
                          Consumer<Tables>(
                            builder: (context, model, child) {
                              return Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  color: Colors.white,
                                ),
                                width: size.width < 394 ? 106 : 134,
                                height: 30,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    // CANT SET THE DEFAULT VALUE**
                                    isExpanded: true,

                                    onChanged: (String? newValue) {
                                      if (newValue != model.dropdownValue) {
                                        switch (newValue) {
                                          case "الشعبه الاولي":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_educationData(),
                                                ));
                                            break;
                                          case "الشعبه الثانيه":
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
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    buttonStyleData: ButtonStyleData(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25))),

                                    items: model.div.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Center(
                                              child: Text(
                                            items,
                                            style: TextStyle(
                                                fontSize:
                                                    size.width < 394 ? 12 : 16),
                                          )));
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("الشعبة"),
                          Consumer<Tables>(
                            builder: (context, model, child) {
                              return Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 3),
                                  color: Colors.white,
                                ),
                                width: 134,
                                height: 30,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2<String>(
                                    // CANT SET THE DEFAULT VALUE**
                                    isExpanded: true,

                                    onChanged: (String? newValue) {
                                      if (newValue != model.dropdownValue) {
                                        switch (newValue) {
                                          case "الشعبه الاولي":
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MainScreen_educationData(),
                                                ));
                                            break;
                                          case "الشعبه الثانيه":
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
                                            borderRadius:
                                                BorderRadius.circular(25))),
                                    buttonStyleData: ButtonStyleData(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25))),

                                    items: model.div.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Center(
                                              child: Text(
                                            items,
                                            style: TextStyle(
                                                fontSize:
                                                    size.width < 394 ? 12 : 16),
                                          )));
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
              ],
            ),
            const SingleChildScrollView(
              child: SizedBox(
                height: 490,
                child: Days(),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
