import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableAttenadnce extends StatelessWidget {
  const TableAttenadnce({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
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
                  flex: 4,
                  child: Column(
                    children: [
                      Center(
                        child: Table(
                          border: TableBorder.all(color: color1, width: 1),
                          children: const [
                            TableRow(children: [
                              Center(child: Text("1")),
                              Center(child: Text("2")),
                              Center(child: Text("3")),
                              Center(child: Text("4")),
                              Center(child: Text("5")),
                              Center(child: Text("6")),
                              Center(child: Text("7")),
                              Center(child: Text("8")),
                              Center(child: Text("9")),
                              Center(child: Text("10")),
                            ])
                          ],
                        ),
                      ),
                    ],
                  ),
                )
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
                    children: [
                      SizedBox(
                        height: Checkbox.width + 10,
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(model.subjectName,
                              style: TextStyle(color: color1));
                        })),
                      ),
                      SizedBox(
                        height: Checkbox.width + 10,
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(model.subjectName,
                              style: TextStyle(color: color1));
                        })),
                      ),
                      SizedBox(
                        height: Checkbox.width + 10,
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(model.subjectName,
                              style: TextStyle(color: color1));
                        })),
                      ),
                      SizedBox(
                        height: Checkbox.width + 10,
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(model.subjectName,
                              style: TextStyle(color: color1));
                        })),
                      ),
                      SizedBox(
                        height: Checkbox.width + 10,
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(model.subjectName,
                              style: TextStyle(color: color1));
                        })),
                      ),
                      SizedBox(
                        height: Checkbox.width + 10,
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(model.subjectName,
                              style: TextStyle(color: color1));
                        })),
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
                          TableRow(
                            children: [
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.remove_circle),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.check_circle),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.remove_circle),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.check_circle),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.remove_circle),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.check_circle),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.remove_circle),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.check_circle),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.remove_circle),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.check_circle),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.remove_circle),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.cancel),
                              ),
                              SizedBox(
                                width: Checkbox.width + 10,
                                height: Checkbox.width + 10,
                                child: Icon(Icons.check_circle),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

// ignore: avoid_unnecessary_containers
Container tableScaffold = Container(
  child: const TableAttenadnce(),
);
