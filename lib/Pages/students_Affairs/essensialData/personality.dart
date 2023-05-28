// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:graduation_project/consatant/Constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PErsonality extends StatelessWidget {
  const PErsonality({super.key});

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
                        return Text("${model.StudentName} ${model.FatherName}",
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
                        return Text(model.StudentNameEnglish,
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
                        return Text("${model.StudentCode}",
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
                        return Text(model.Religion,
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
                        return Text(model.Gender,
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
                        return Text(model.Nationality,
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
                        return Text(model.DateOfBirth,
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
                        return Text(model.DateAppear,
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
                        return Text(model.SocialState,
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
                        return Text("${model.StudentCode}",
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
                        return Text("${model.Id}",
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
                        return Text(model.DateAppear,
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
                        return Text(model.PlaceAppear,
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
                        return Text(model.FatherName,
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
                        return Text(model.MotherName,
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
                        return Text(model.EntryState,
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
                        return Text(model.Acceptkind,
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
                        return Text(model.AcceptYear,
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

Container Personality_Scaffold = Container(
  child: const PErsonality(),
);
