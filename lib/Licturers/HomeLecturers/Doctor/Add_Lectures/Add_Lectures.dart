// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, unused_local_variable, avoid_unnecessary_containers

import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/consatant/Constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:expandable/expandable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Add_Lectures extends StatelessWidget {
  const Add_Lectures({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> num = [1, 2, 3];
    final Color color1 = HexColor('#3E6BA9');
    String? fileName;

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
                              fontSize: size.width < 500 ? 18 : 30,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Container(
                              width: size.width < 400 ? 170 : 300,
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
                              fontSize: size.width < 500 ? 18 : 30,
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
                            width: size.width < 400 ? 170 : 300,
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
                      ElevatedButton(
                        child: const Text('UPLOAD FILE'),
                        onPressed: () async {
                          var picked = await FilePicker.platform.pickFiles();
                          fileName = picked.toString();
                        },
                      ),
                      Text("$fileName")
                    ],
                  ),
                ),
                Consumer<LecturersProvider>(
                  builder: (context, model, child) {
                    return Column(
                      children: [
                        for (int i = 0;
                            i < model.SubjectExpandablePanelCount;
                            i++)
                          Container(
                            margin: const EdgeInsets.all(1),
                            width: 600,
                            decoration: BoxDecoration(
                                border: Border.all(width: 3, color: color1)),
                            child: ExpandablePanel(
                                controller: ExpandableController.of(context),
                                header: Text(
                                    "منهج مادة${model.SubjectExpandablePanel[i]["المادة"]}الفرقة ${model.SubjectExpandablePanel[i]["الفرقة"]}"),
                                collapsed: const SizedBox(
                                  height: 0,
                                ),
                                expanded: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Row(
                                        children: const [
                                          Expanded(
                                              flex: 1,
                                              child: Center(
                                                  child: Text("المحاضرة"))),
                                          Expanded(
                                              flex: 3,
                                              child:
                                                  Center(child: Text("الملف")))
                                        ],
                                      ),
                                    ),
                                    GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: 46,
                                        crossAxisCount: 1,
                                      ),
                                      itemCount: model.addLicturecount,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Column(
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                            "${model.AddLecture[index]["ID"]}"),
                                                      ],
                                                    )),
                                                Expanded(
                                                    flex: 3,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                  "فتح")),
                                                        ),
                                                        Expanded(
                                                          child: TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                  "تغيير")),
                                                        ),
                                                        Expanded(
                                                          child: TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                  "مسح")),
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            )
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                )),
                          ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
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
