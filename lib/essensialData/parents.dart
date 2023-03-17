import 'package:btxproject2/Constant.dart';
import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Parents extends StatelessWidget {
  const Parents({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StudentDetails(),
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
                    Expanded(child: Text("الأسم ")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianName}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("الجنسية")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianNationality}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("المدينة")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianCity}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("العنوان")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianAddress}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("الوظيفة")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianJob}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("حهة العمل")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianEmpolyer}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("درجة القرابة")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianDegreeOfKindShip}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("تليفون العمل")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianPhoneWork}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("المحمول")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianPhone}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("البريد الألكتروني")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianEmail}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: Text("فاكس")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.GuardianFax}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Container Parents_Scaffold = Container(
  child: Parents(),
);
