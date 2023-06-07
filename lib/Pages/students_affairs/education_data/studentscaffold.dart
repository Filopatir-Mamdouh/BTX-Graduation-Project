import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
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
                      return const Text("الاسم ");
                    }))),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(
                          "${model.studentName} ${model.fatherName}",
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
                      return const Text(" الاسم باللغه الانجليزيه ");
                    }))),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(
                        model.studentNameEnglish,
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
                      return const Text("كود الطالب ");
                    }))),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(
                        "${model.studentCode}",
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
                      return const Text("القسم ");
                    }))),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(
                        model.section,
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
                      return const Text("الشعبه ");
                    }))),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(
                        model.division,
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
                      return const Text("الايميل الجامعي ");
                    }))),
                    Expanded(child: Center(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(
                          model.email,
                          style: TextStyle(color: color1),
                        );
                      })),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Container studentScaffold = const Student() as Container;
