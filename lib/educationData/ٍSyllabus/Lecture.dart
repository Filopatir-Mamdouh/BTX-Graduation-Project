import 'package:btxproject2/Constant.dart';
import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Container Table_Lectures_Scaffold = Container(
  child: Table_Lectures(),
);

class Table_Lectures extends StatelessWidget {
  const Table_Lectures({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
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
                      children: [
                        Center(child: Text("المحاضرات")),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Consumer<Semester>(
                  builder: (context, subject, child) {
                    return Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Container(
                                  height: Checkbox.width + 10,
                                  child: Center(
                                      child: Text(
                                    "${subject.name}",
                                    style: TextStyle(color: color1),
                                  )),
                                ),
                                Container(
                                  height: Checkbox.width + 10,
                                  child: Center(
                                      child: Text(
                                    "${subject.name}",
                                    style: TextStyle(color: color1),
                                  )),
                                ),
                                Container(
                                  height: Checkbox.width + 10,
                                  child: Center(
                                      child: Text(
                                    "${subject.name}",
                                    style: TextStyle(color: color1),
                                  )),
                                ),
                                Container(
                                  height: Checkbox.width + 10,
                                  child: Center(
                                      child: Text(
                                    "${subject.name}",
                                    style: TextStyle(color: color1),
                                  )),
                                ),
                                Container(
                                  height: Checkbox.width + 10,
                                  child: Center(
                                      child: Text(
                                    "${subject.name}",
                                    style: TextStyle(color: color1),
                                  )),
                                ),
                                Container(
                                  height: Checkbox.width + 10,
                                  child: Center(
                                      child: Text(
                                    "${subject.name}",
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
                                  border:
                                      TableBorder.all(color: color1, width: 1),
                                  children: [
                                    TableRow(children: [
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("1"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("2"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("3"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("4"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("5"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("6"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("7"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("8"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("9"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("10"))),
                                    ]),
                                    TableRow(children: [
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("1"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("2"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("3"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("4"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("5"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("6"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("7"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("8"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("9"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("10"))),
                                    ]),
                                    TableRow(children: [
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("1"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("2"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("3"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("4"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("5"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("6"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("7"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("8"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("9"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("10"))),
                                    ]),
                                    TableRow(children: [
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("1"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("2"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("3"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("4"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("5"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("6"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("7"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("8"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("9"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("10"))),
                                    ]),
                                    TableRow(children: [
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("1"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("2"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("3"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("4"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("5"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("6"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("7"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("8"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("9"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("10"))),
                                    ]),
                                    TableRow(children: [
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("1"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("2"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("3"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("4"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("5"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("6"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("7"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("8"))),
                                      Container(
                                          width: Checkbox.width + 10,
                                          height: Checkbox.width + 10,
                                          child: Center(child: Text("9"))),
                                      Container(
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
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
