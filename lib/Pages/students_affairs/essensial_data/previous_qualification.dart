import 'package:btxproject2/consatant/constant.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreviousQualification extends StatelessWidget {
  const PreviousQualification({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StudentDetails(),
          ),
        ],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  const Expanded(child: Text("المؤهل ")),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text(model.qualification,
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const Expanded(child: Text("الجهة ")),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text(model.sideQualification,
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const Expanded(child: Text("سنة التخرج ")),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.graduationYear}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const Expanded(child: Text("المجموع ")),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.totalDegreeGraduation}",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  const Expanded(child: Text("النسبة ")),
                  Expanded(child: Center(child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Text("${model.percentage}%",
                        style: TextStyle(color: color1));
                  })))
                ],
              ),
            ),
          ],
        ));
  }
}

Container previousScaffold = const PreviousQualification() as Container;
