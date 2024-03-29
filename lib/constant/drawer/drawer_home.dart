import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/constant/widgets/logout.dart';
import 'package:graduation_project/pages/Data_Screen/Data_screen_responsive.dart';
import 'package:graduation_project/pages/home_lecturers/doctor/attendance/main_screen_doctor.dart';
import 'package:graduation_project/pages/students_affairs/education_data/main_screen_educationdata.dart';
import 'package:graduation_project/pages/students_affairs/essensial_data/main_screen_essential_data.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../Pages/Documents_Request/Documents_request_responsive.dart';
import '../../Pages/basic_info/Basic_info_responsive.dart';
import '../../Provider/backend/apiprovider.dart';
import '../../Provider/provider.dart';
import '../../pages/Educational _Data/Educational_Data_Screen_Responsive.dart';
import '../../pages/Lecture_Attendance/Lecture_Attendance_table_responsive.dart';
import '../../pages/Login&register/Login_page_responsive.dart';
import '../../pages/Material_Schedual_Screen/Material_Schedual_Responsive.dart';
import '../../pages/Student_Academiv_result_affairs/Student_Academic_Result_Responsive.dart';
import '../../pages/Student_Attendance_Affairs/Student_Attendance_responsive.dart';
import '../../pages/Study_fees_affairs/Affairs_Study_fees_Responsive.dart';
import '../../pages/lecture_info/lecture_informationresponsive.dart';
import '../../pages/students_affairs/respond_to_request/main_screen_respond_to_request.dart';
import '../../pages/students_affairs/schedule/main_screen_table_schedule.dart';

class DrawerHome extends ConsumerWidget {
  const DrawerHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    void onPressed(Widget page) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => page));
    }

    Color greyText = const Color(0xFF707070);
    Size size = MediaQuery.of(context).size;
    // ignore: prefer_typing_uninitialized_variables
    var dropdownValue;
    final affairmodel = ref.watch(affairsProvider);
    return affairmodel.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (context) => SingleChildScrollView(
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
                    child: Image.asset("assets/profile.png")),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Text(affairmodel.value?.Name.split(' ')[0] ?? '',
                        style: TextStyle(
                            color: greyText,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Consumer(builder: (context, ref, child) {
                      int? n = affairmodel.value?.Name.indexOf(' ');
                      return Text(
                          affairmodel.value?.Name.substring(n! + 1) ?? '',
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
              child: Consumer(
                builder: (context, ref, child) {
                  return DropdownButtonHideUnderline(
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
                                        StudentsDataScreenResponsive(),
                                  ));
                              break;
                            case "النتائج الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Student_Academic_Result_Responsive(),
                                  ));
                              break;
                            case "نسبة الحضور":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        student_Attendance_responsive(),
                                  ));
                              break;
                            case "الرسوم الدراسية":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Affairs_Study_Fees_Responsive(),
                                  ));
                              break;
                            case "استخراج مستند":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DocumentsRequestPageResposive(),
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

                      items: ref
                          .watch(lecturersDrawerProvider)
                          .studentDetailsList
                          .map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Center(child: Text(items)));
                      }).toList(),
                    ),
                  );
                },
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
              child: Consumer(
                builder: (context, ref, child) {
                  return DropdownButtonHideUnderline(
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
                                        Lecture_information_Responsive(),
                                  ));
                              break;
                            case "الحضور":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Lecture_attendance_responsive(),
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

                      items: ref
                          .watch(lecturersDrawerProvider)
                          .instructorDetailsList
                          .map((String items) {
                        return DropdownMenuItem(
                            value: items, child: Center(child: Text(items)));
                      }).toList(),
                    ),
                  );
                },
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
              child: Consumer(
                builder: (context, ref, child) {
                  return DropdownButtonHideUnderline(
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
                                        MaterialsScheduleScreen_Responsive(),
                                  ));
                              break;
                            case "الجدول الدراسي":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MainScreenTableSchedule(),
                                  ));
                              break;
                            case "الحضور":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        EducationalDataResponsive(),
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

                      items: ref
                          .watch(lecturersDrawerProvider)
                          .educationDetailsList
                          .map((String items) {
                        return DropdownMenuItem(
                            value: items,
                            child: Center(
                              child: Text(
                                items,
                              ),
                            ));
                      }).toList(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Stack(
              fit: StackFit.passthrough,
              children: [
                ElevatedButton(
                    onPressed: () {
                      onPressed(const MainScreenRespondToRequest());
                    }, //MainScreenRespondToRequest
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
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}
