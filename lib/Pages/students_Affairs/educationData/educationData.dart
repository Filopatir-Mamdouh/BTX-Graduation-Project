// ignore_for_file: file_names, camel_case_types, sort_child_properties_last

import 'package:btxproject2/consatant/Constant.dart';
import 'package:btxproject2/consatant/Drawer/affairs_side_menu.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/consatant/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class educatinData extends StatelessWidget {
  final Color color1 = HexColor('#3E6BA9');

  educatinData({super.key});

  @override
  Widget build(BuildContext context) {
    Size? size = MediaQuery.of(context).size;
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
        //drawer here
        drawer: Responsive.isMobile(context) || size.height < 500
            ? const Drawer(child: sidemenu())
            : null,

        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Container(
                    width: 600,
                    color: Colors.white,
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("البيانات التعليمية"),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        color: color1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                flex: 83,
                                child: Consumer<ScaffoldDataEducation>(
                                    builder: (context, scaffold, child) {
                                  return ElevatedButton(
                                    child: Text("الطالب",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: scaffold.student == true
                                          ? color1
                                          : Colors.white,
                                      backgroundColor: scaffold.student == true
                                          ? Colors.white
                                          : color1,
                                    ),
                                    onPressed: () {
                                      scaffold.studentScaffold();
                                    },
                                  );
                                })),
                            Expanded(
                                flex: 103,
                                child: Consumer<ScaffoldDataEducation>(
                                    builder: (context, scaffold, child) {
                                  return MaterialButton(
                                    child: Text("النتائج الدراسية",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
                                    textColor: scaffold.degree == true
                                        ? color1
                                        : Colors.white,
                                    color: scaffold.degree == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      scaffold.DegreeScaffold();
                                    },
                                  );
                                })),
                            Expanded(
                                flex: 98,
                                child: Consumer<ScaffoldDataEducation>(
                                    builder: (context, scaffold, child) {
                                  return MaterialButton(
                                    child: Text("جدول الحضور",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
                                    textColor: scaffold.table == true
                                        ? color1
                                        : Colors.white,
                                    color: scaffold.table == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      scaffold.TableScaffold();
                                    },
                                  );
                                })),
                            Expanded(
                                flex: 111,
                                child: Consumer<ScaffoldDataEducation>(
                                    builder: (context, scaffold, child) {
                                  return MaterialButton(
                                    onPressed: () {
                                      scaffold.SyllabusScaffold();
                                    },
                                    child: Text("المناهج الدراسية",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
                                    textColor: scaffold.syllabus == true
                                        ? color1
                                        : Colors.white,
                                    color: scaffold.syllabus == true
                                        ? Colors.white
                                        : color1,
                                  );
                                }))
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          width: 600,
                          height: 600,
                          padding: size.width > 450
                              ? const EdgeInsets.all(40)
                              : const EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: color1)),
                          child: Consumer<ScaffoldDataEducation>(
                              builder: (context, scaffold, child) {
                            return scaffold.Scaffold;
                          }),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_left), label: 'السابق'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'البيانات التعليمية',
//             backgroundColor: Colors.purple,
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_right), label: 'التالي'),
//         ],
//       ),


