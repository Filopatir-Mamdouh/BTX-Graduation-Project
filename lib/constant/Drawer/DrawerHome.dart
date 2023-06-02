// ignore_for_file: file_names, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:graduation_project/Pages/HomeLecturers/Doctor/Attendance/main_screen_Doctor.dart';
import 'package:graduation_project/Pages/students_Affairs/educationData/main_screen_educationData.dart';
import 'package:graduation_project/Pages/students_Affairs/essensialData/main_screen_essentialData.dart';
import 'package:graduation_project/Provider/Provider.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color greyText = const Color(0xFF707070);
    Size size = MediaQuery.of(context).size;
    var dropdownValue;
    List<String> EducationDetailsList = [
      "المقررات الدراسية",
      "الجدول الدراسي",
      "الحضور"
    ];
    List<String> InstructorDetailsList = ["بيانات المحاضرين", "الحضور"];
    List<String> StudentDetailsList = [
      "البيانات الأساسية",
      "النتائج الدراسية",
      "نسبة الحضور",
      "الرسوم الدراسية",
      "استخراج مستند"
    ];
    return SingleChildScrollView(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StudentDetails(),
          )
        ],
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: greyText),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Consumer<StudentDetails>(
                      builder: (context, model, child) {
                    return Image.asset(model.StudentImgPath);
                  }),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Consumer<StudentDetails>(builder: (context, model, child) {
                      return Text(model.StudentName,
                          style: TextStyle(
                              color: greyText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold));
                    }),
                    Consumer<StudentDetails>(builder: (context, model, child) {
                      return Text(model.FatherName,
                          style: TextStyle(
                              color: greyText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold));
                    }),
                    const Divider()
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.white,
              ),
              width: 170,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  // CANT SET THE DEFAULT VALUE**
                  isExpanded: true,
                  hint: Center(
                      child: Text(
                    "بيانات الطلبة",
                    style: TextStyle(
                        fontSize: size.width < 500 ? 10 : 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )),
                  onChanged: (String? newValue) {
                    if (newValue != dropdownValue) {
                      switch (newValue) {
                        case "البيانات الأساسية":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_educationData(),
                              ));
                          break;
                        case "النتائج الدراسية":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_essentialData(),
                              ));
                          break;
                        case "نسبة الحضور":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_essentialData(),
                              ));
                          break;
                        case "الرسوم الدراسية":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_essentialData(),
                              ));
                          break;
                        case "استخراج مستند":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_essentialData(),
                              ));
                          break;
                      }
                    }
                  },
                  alignment: AlignmentDirectional.center,
                  dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25))),
                  buttonStyleData: ButtonStyleData(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25))),

                  items: StudentDetailsList.map((String items) {
                    return DropdownMenuItem(
                        value: items, child: Center(child: Text(items)));
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.white,
              ),
              width: 170,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  // CANT SET THE DEFAULT VALUE**
                  isExpanded: true,

                  hint: Center(
                      child: Text(
                    "بيانات المحاضرين",
                    style: TextStyle(
                        fontSize: size.width < 500 ? 10 : 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )),
                  onChanged: (String? newValue) {
                    if (newValue != dropdownValue) {
                      switch (newValue) {
                        case "بيانات المحاضرين":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_educationData(),
                              ));
                          break;
                        case "الحضور":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_essentialData(),
                              ));
                          break;
                      }
                    }
                  },
                  alignment: AlignmentDirectional.center,
                  dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25))),
                  buttonStyleData: ButtonStyleData(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25))),

                  items: InstructorDetailsList.map((String items) {
                    return DropdownMenuItem(
                        value: items, child: Center(child: Text(items)));
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.black, width: 3),
                color: Colors.white,
              ),
              width: 170,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  // CANT SET THE DEFAULT VALUE**
                  isExpanded: true,

                  hint: Center(
                      child: Text(
                    "البيانات التعليمية",
                    style: TextStyle(
                        fontSize: size.width < 500 ? 10 : 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  )),
                  onChanged: (String? newValue) {
                    if (newValue != dropdownValue) {
                      switch (newValue) {
                        case "المقررات الدراسية":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_educationData(),
                              ));
                          break;
                        case "الجدول الدراسي":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainScreen_essentialData(),
                              ));
                          break;
                        case "الحضور":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainScreen_Doctor(),
                              ));
                          break;
                      }
                    }
                  },
                  alignment: AlignmentDirectional.center,
                  dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25))),
                  buttonStyleData: ButtonStyleData(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25))),

                  items: EducationDetailsList.map((String items) {
                    return DropdownMenuItem(
                        value: items,
                        child: Center(
                          child: Text(
                            items,
                          ),
                        ));
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Stack(
              fit: StackFit.passthrough,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(170, 54),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25), // <-- Radius
                        ),
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black87, width: 3),
                        textStyle: const TextStyle(
                            fontSize: 25, fontStyle: FontStyle.normal)),
                    child: Text(
                      "الرد علي الطلبات",
                      style: TextStyle(
                          fontSize: size.width < 500 ? 10 : 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    )),
                Positioned(
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )),
                    child: const Text(
                      "8",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(170, 53),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // <-- Radius
                    ),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black87, width: 3),
                    textStyle: const TextStyle(
                        fontSize: 25, fontStyle: FontStyle.normal)),
                child: Text(
                  "تسجيل الخروج",
                  style: TextStyle(
                      fontSize: size.width < 500 ? 10 : 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                )),
          ],
        ),
      ),
    );
  }
}
