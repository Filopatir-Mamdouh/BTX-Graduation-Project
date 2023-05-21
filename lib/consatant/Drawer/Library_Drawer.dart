// ignore_for_file: file_names, camel_case_types, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Library_Drawer extends StatelessWidget {
  Library_Drawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color grey_text = const Color(0xFF707070);
    return SingleChildScrollView(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StudentDetails(),
          )
        ],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: grey_text),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.StudentName,
                            style: TextStyle(
                              color: grey_text,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ));
                      }),
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.FatherName,
                            style: TextStyle(
                                color: grey_text,
                                fontSize: 18,
                                fontWeight: FontWeight.bold));
                      }),
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.StudentTeam,
                            style: TextStyle(
                                color: grey_text,
                                fontSize: 18,
                                fontWeight: FontWeight.bold));
                      }),
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.Section,
                            style: TextStyle(
                                color: grey_text,
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
                child: const Text(
                  "الكتب الحالية",
                  style: TextStyle(
                      fontSize: 15,
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
                child: const Text(
                  "الأجهزة المتاحة",
                  style: TextStyle(
                      fontSize: 15,
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
                child: const Text(
                  "تسجيل الخروج",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                )),
          ],
        ),
      ),
    );
  }
}
