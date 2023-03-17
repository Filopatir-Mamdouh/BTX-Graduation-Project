import 'package:btxproject2/Constant.dart';
import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Student extends StatelessWidget {
  const Student({super.key});

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
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("الاسم ");
                      }))),
                      Expanded(
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(
                            "${model.StudentName + " " + model.FatherName}",
                            style: TextStyle(color: color1),
                          );
                        })),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(" الاسم باللغه الانجليزيه ");
                      }))),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(
                          "${model.StudentNameEnglish}",
                          style: TextStyle(color: color1),
                        );
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("كود الطالب ");
                      }))),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(
                          "${model.StudentCode}",
                          style: TextStyle(color: color1),
                        );
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("القسم ");
                      }))),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(
                          "${model.Section}",
                          style: TextStyle(color: color1),
                        );
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("الشعبه ");
                      }))),
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(
                          "${model.Division}",
                          style: TextStyle(color: color1),
                        );
                      })))
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("الايميل الجامعي ");
                      }))),
                      Expanded(child: Center(
                        child: Center(child: Consumer<StudentDetails>(
                            builder: (context, model, child) {
                          return Text(
                            "${model.Email}",
                            style: TextStyle(color: color1),
                          );
                        })),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Container Student_scaffold = Container(
  child: Student(),
);
