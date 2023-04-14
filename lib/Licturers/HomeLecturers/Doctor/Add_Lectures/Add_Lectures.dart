// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, unused_local_variable, avoid_unnecessary_containers

import 'dart:io';

import 'package:btxproject2/Licturers/HomeLecturers/Doctor/Add_Lectures/all_syllabus.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:expandable/expandable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Add_Lectures extends StatelessWidget {
  const Add_Lectures({super.key});

  @override
  Widget build(BuildContext context) {
    File file = File("");

    Size size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LecturersProvider(),
        )
      ],
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "المنهج الدراسي",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "الفرقة",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.width < 500 ? 20 : 30,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                              width: size.width < 500 ? 200 : 300,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black87, width: 3),
                              ),
                              child: Center(child: Expanded(child: Center(
                                child: Consumer<LecturersProvider>(
                                    builder: (context, model, child) {
                                  return DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      // CANT SET THE DEFAULT VALUE**
                                      isExpanded: true,

                                      hint: Center(
                                          child: Text(
                                        "حدد الفرقة",
                                        style: TextStyle(
                                          fontSize: size.width < 500 ? 10 : 15,
                                        ),
                                      )),
                                      onChanged: (String? newValue) {
                                        model.setSelected_Team(newValue);
                                      },
                                      alignment: AlignmentDirectional.center,
                                      dropdownStyleData: DropdownStyleData(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25))),
                                      value: model.selected_Team,

                                      items: model.Team.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Center(
                                                child: Text(
                                              items,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87),
                                            )));
                                      }).toList(),
                                    ),
                                  );
                                }),
                              ))))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "الماده",
                            style: TextStyle(
                              fontSize: size.width < 500 ? 20 : 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black87, width: 3),
                            ),
                            width: size.width < 500 ? 200 : 300,
                            child: Center(child: Expanded(child: Center(child:
                                Consumer<LecturersProvider>(
                                    builder: (context, model, child) {
                              return DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  // CANT SET THE DEFAULT VALUE**
                                  isExpanded: true,

                                  hint: Center(
                                      child: Text(
                                    "حدد المادة",
                                    style: TextStyle(
                                      fontSize: size.width < 500 ? 10 : 15,
                                    ),
                                  )),
                                  onChanged: (String? newValue) {
                                    model.setSelected_Subject(newValue);
                                  },
                                  alignment: AlignmentDirectional.center,
                                  dropdownStyleData: DropdownStyleData(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                  value: model.selected_Subject,

                                  items: model.Subject.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Center(
                                            child: Text(
                                          items,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        )));
                                  }).toList(),
                                ),
                              );
                            })))),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.file(file),
                      ElevatedButton(
                          child: const Text('UPLOAD FILE'),
                          onPressed: () {
                            PickFile();
                          }),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const All_Syllabus(),
                          ));
                    },
                    child: const Text("المواد و المحاضرات")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void PickFile() async {
  FilePickerResult? result =
      await FilePicker.platform.pickFiles(type: FileType.any);
}

class ExpandedPanel_Container_Syllabus extends StatelessWidget {
  const ExpandedPanel_Container_Syllabus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpandablePanel(
        collapsed: const SizedBox(height: 0),
        header: const Text("منهج مادة ... لفرقة ...ا"),
        expanded: Column(
          children: [
            Row(
              children: const [
                Expanded(flex: 1, child: Center(child: Text("المحاضرة"))),
                Expanded(flex: 3, child: Center(child: Text("الملف")))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("1"),
                          ],
                        )
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextButton(
                                  onPressed: () {}, child: const Text("فتح")),
                            ),
                            Expanded(
                              child: TextButton(
                                  onPressed: () {}, child: const Text("تغيير")),
                            ),
                            Expanded(
                              child: TextButton(
                                  onPressed: () {}, child: const Text("مسح")),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
