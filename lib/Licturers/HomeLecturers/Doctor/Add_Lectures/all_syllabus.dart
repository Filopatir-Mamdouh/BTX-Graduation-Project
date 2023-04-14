// ignore_for_file: camel_case_types, avoid_print

import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/consatant/Constant.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class All_Syllabus extends StatelessWidget {
  const All_Syllabus({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCounts = 4;
    final Color color1 = HexColor('#3E6BA9');
    Size size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LecturersProvider(),
        )
      ],
      child: Scaffold(
        body: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text("الرد علي الإستفسارات و الطلبات",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(child:
                Consumer<LecturersProvider>(builder: (context, model, child) {
              return Container(
                padding: EdgeInsets.only(
                    right: size.width < 850 ? 0 : 40,
                    left: size.width < 850 ? 0 : 40),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent:
                        model.check == true ? 46 + (itemCounts + 1) * 46 : 46,
                    crossAxisCount: 1,
                  ),
                  itemCount: 3,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: color1)),
                      child: GestureDetector(
                        onTap: () {
                          model.checkPress();
                          print("pressed ");
                        },
                        child: ExpandablePanel(
                            controller: ExpandableController.of(context),
                            header: const Text("منهج مادة ... لفرقة ...ا"),
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
                                          child:
                                              Center(child: Text("المحاضرة"))),
                                      Expanded(
                                          flex: 3,
                                          child: Center(child: Text("الملف")))
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
                                  itemCount: itemCounts,
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
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text("1"),
                                                  ],
                                                )),
                                            Expanded(
                                                flex: 3,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
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
                    );
                  },
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
