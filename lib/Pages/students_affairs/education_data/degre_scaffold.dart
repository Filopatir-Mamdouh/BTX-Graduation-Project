import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Degree extends StatelessWidget {
  const Degree({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StudentDetails(),
        ),
      ],
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        "المقرر الدراسي",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  const Expanded(
                      child: Center(
                          child: Text("الدرجة",
                              style: TextStyle(color: Colors.black))))
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Expanded(child: Center(child:
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                    return Text(model.subjectName,
                        style: const TextStyle(color: Colors.black));
                  })))),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.degree}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Expanded(child: Center(child:
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                    return Text(model.subjectName,
                        style: const TextStyle(color: Colors.black));
                  })))),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.degree}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Expanded(child: Center(child:
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                    return Text(model.subjectName,
                        style: const TextStyle(color: Colors.black));
                  })))),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.degree}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Expanded(child: Center(child:
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                    return Text(model.subjectName,
                        style: const TextStyle(color: Colors.black));
                  })))),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.degree}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Expanded(child: Center(child:
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                    return Text(model.subjectName,
                        style: const TextStyle(color: Colors.black));
                  })))),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.degree}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Expanded(child: Center(child:
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                    return Text(model.subjectName,
                        style: const TextStyle(color: Colors.black));
                  })))),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.degree}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container degreeScaffold = const Degree() as Container;
