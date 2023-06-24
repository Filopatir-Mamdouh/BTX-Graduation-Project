import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/pages/home_lecturers/doctor/attendance/main_screen_doctor.dart';
import 'package:graduation_project/pages/students_affairs/education_data/main_screen_educationdata.dart';
import 'package:graduation_project/pages/students_affairs/essensial_data/main_screen_essential_data.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../Provider/backend/apiprovider.dart';
import '../widgets/logout.dart';

class DrawerLecturers extends ConsumerWidget {
  const DrawerLecturers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    final insModel = ref.watch(insProvider);
    Color greyText = const Color(0xFF707070);
    Size size = MediaQuery.of(context).size;
    // ignore: prefer_typing_uninitialized_variables
    var dropdownValue;
    List<String>? educationDetailsList = [
      "المقررات الدراسية",
      "الجدول الدراسي",
      "الحضور"
    ];
    return insModel.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err \n'),
        data: (context) {
          int? s = insModel.value?.insName.indexOf(' ');
          return SingleChildScrollView(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Image.asset('assets/profile.png')),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Consumer(builder: (context, ref, child) {
                          return Text(
                              insModel.value?.insName.split(' ')[0] ?? '',
                              style: TextStyle(
                                  color: greyText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold));
                        }),
                        Consumer(builder: (context, ref, child) {
                          return Text(
                              insModel.value?.insName.substring(s! + 1) ?? '',
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
                      "البيانات الأساسية",
                      style: TextStyle(
                          fontSize: size.width < 500 ? 10 : 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    )),
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
                      "تسجيل الحضور",
                      style: TextStyle(
                          fontSize: size.width < 500 ? 10 : 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    )),
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
                                  context as BuildContext,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MainScreenEducationData(),
                                  ));
                              break;
                            case "الجدول الدراسي":
                              Navigator.push(
                                  context as BuildContext,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MainScreenEssentialData(),
                                  ));
                              break;
                            case "الحضور":
                              Navigator.push(
                                  context as BuildContext,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MainScreenDoctor(),
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

                      items: educationDetailsList.map((String items) {
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
                              borderRadius:
                                  BorderRadius.circular(25), // <-- Radius
                            ),
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                                color: Colors.black87, width: 3),
                            textStyle: const TextStyle(
                                fontSize: 25, fontStyle: FontStyle.normal)),
                        child: Text(
                          "المحادثة",
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
                          "  ",
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
          );
        });
  }
}
