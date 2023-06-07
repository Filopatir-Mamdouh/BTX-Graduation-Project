import 'package:btxproject2/consatant/constant.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Container tableLecturesScaffold = const TableLectures() as Container;

class TableLectures extends StatelessWidget {
  const TableLectures({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: const [
                      Center(
                        child: Text(
                          "المقرر الدراسي",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      Center(child: Text("المحاضرات")),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Consumer<Semester>(
              builder: (context, subject, child) {
                return Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          SizedBox(
                            height: Checkbox.width + 10,
                            child: Center(
                                child: Text(
                              subject.name,
                              style: TextStyle(color: color1),
                            )),
                          ),
                          SizedBox(
                            height: Checkbox.width + 10,
                            child: Center(
                                child: Text(
                              subject.name,
                              style: TextStyle(color: color1),
                            )),
                          ),
                          SizedBox(
                            height: Checkbox.width + 10,
                            child: Center(
                                child: Text(
                              subject.name,
                              style: TextStyle(color: color1),
                            )),
                          ),
                          SizedBox(
                            height: Checkbox.width + 10,
                            child: Center(
                                child: Text(
                              subject.name,
                              style: TextStyle(color: color1),
                            )),
                          ),
                          SizedBox(
                            height: Checkbox.width + 10,
                            child: Center(
                                child: Text(
                              subject.name,
                              style: TextStyle(color: color1),
                            )),
                          ),
                          SizedBox(
                            height: Checkbox.width + 10,
                            child: Center(
                                child: Text(
                              subject.name,
                              style: TextStyle(color: color1),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Table(
                            border: TableBorder.all(color: color1, width: 1),
                            children: const [
                              TableRow(children: [
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("1"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("2"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("3"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("4"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("5"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("6"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("7"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("8"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("9"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("10"))),
                              ]),
                              TableRow(children: [
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("1"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("2"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("3"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("4"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("5"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("6"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("7"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("8"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("9"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("10"))),
                              ]),
                              TableRow(children: [
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("1"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("2"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("3"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("4"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("5"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("6"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("7"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("8"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("9"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("10"))),
                              ]),
                              TableRow(children: [
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("1"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("2"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("3"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("4"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("5"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("6"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("7"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("8"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("9"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("10"))),
                              ]),
                              TableRow(children: [
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("1"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("2"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("3"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("4"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("5"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("6"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("7"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("8"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("9"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("10"))),
                              ]),
                              TableRow(children: [
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("1"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("2"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("3"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("4"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("5"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("6"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("7"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("8"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("9"))),
                                SizedBox(
                                    width: Checkbox.width + 10,
                                    height: Checkbox.width + 10,
                                    child: Center(child: Text("10"))),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
