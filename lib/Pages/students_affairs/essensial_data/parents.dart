import 'package:graduation_project/Provider/provider.dart';
import 'package:graduation_project/constant/constant.dart';
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
                    const Expanded(child: Text("الأسم ")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianName,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("الجنسية")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianNationality,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("المدينة")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianCity,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("العنوان")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianAddress,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("الوظيفة")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianJob,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("حهة العمل")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianEmpolyer,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("درجة القرابة")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianDegreeOfKindShip,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("تليفون العمل")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.guardianPhoneWork}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("المحمول")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text("${model.guardianPhone}",
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("البريد الألكتروني")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianEmail,
                          style: TextStyle(color: color1));
                    })))
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    const Expanded(child: Text("فاكس")),
                    Expanded(child: Center(child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Text(model.guardianFax,
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

// ignore: avoid_unnecessary_containers
Container parentsScaffold = Container(child: const Parents());
