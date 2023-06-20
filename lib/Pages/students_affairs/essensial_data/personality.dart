import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Provider/provider.dart';

class Personality extends StatelessWidget {
  const Personality({super.key});

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
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("الاسم ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("${model.studentName} ${model.fatherName}",
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" الاسم باللغه الانجليزيه ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.studentNameEnglish,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("كود الطالب ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("${model.code}",
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Expanded(child: Text(" الديانة "))),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.religion,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" النوع ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.gender,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" الجنسيه ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.nationality,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" تاريخ الميلاد ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.dateOfBirth,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" محل الميلاد")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.dateAppear,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" الحالة الأجتماعية ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.socialState,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" نوع البطاقة ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.kindId,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("كود الطالب ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("${model.studentCode}",
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("رقم البطاقة ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text("${model.id}",
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" تاريخ الصدور ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.dateAppear,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("مكان الصدور ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.placeAppear,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("اسم الأب ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.fatherName,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" اسم الأم ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.motherName,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" حالة القيد ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.entryState,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" نوع القبول ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.acceptkind,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text(" عام القبول ")),
                    Expanded(
                      child: Center(child: Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.acceptYear,
                            style: TextStyle(color: color1));
                      })),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

// ignore: avoid_unnecessary_containers
Container personalityScaffold = Container(child: const Personality());
