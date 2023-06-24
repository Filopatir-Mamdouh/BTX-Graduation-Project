import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:graduation_project/constant/drawer/library_drawer.dart';
import 'package:graduation_project/constant/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EducatinData extends StatelessWidget {
  final Color color1 = HexColor('#3E6BA9');

  EducatinData({super.key});

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
            ? const Drawer(child: LibraryDrawer())
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
                                    child: Text("الطالب",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
                                  );
                                })),
                            Expanded(
                                flex: 103,
                                child: Consumer<ScaffoldDataEducation>(
                                    builder: (context, scaffold, child) {
                                  return MaterialButton(
                                    textColor: scaffold.degree == true
                                        ? color1
                                        : Colors.white,
                                    color: scaffold.degree == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      scaffold.degreescaffold();
                                    },
                                    child: Text("النتائج الدراسية",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
                                  );
                                })),
                            Expanded(
                                flex: 98,
                                child: Consumer<ScaffoldDataEducation>(
                                    builder: (context, scaffold, child) {
                                  return MaterialButton(
                                    textColor: scaffold.table == true
                                        ? color1
                                        : Colors.white,
                                    color: scaffold.table == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      scaffold.tablescaffold();
                                    },
                                    child: Text("جدول الحضور",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
                                  );
                                })),
                            Expanded(
                                flex: 111,
                                child: Consumer<ScaffoldDataEducation>(
                                    builder: (context, scaffold, child) {
                                  return MaterialButton(
                                    onPressed: () {
                                      scaffold.syllabusscaffold();
                                    },
                                    textColor: scaffold.syllabus == true
                                        ? color1
                                        : Colors.white,
                                    color: scaffold.syllabus == true
                                        ? Colors.white
                                        : color1,
                                    child: Text("المناهج الدراسية",
                                        style: TextStyle(
                                            fontSize:
                                                size.width <= 435 ? 9 : 15)),
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
                            return scaffold.scaffold;
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
