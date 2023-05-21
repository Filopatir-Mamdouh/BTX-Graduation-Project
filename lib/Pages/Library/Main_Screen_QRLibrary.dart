// ignore_for_file: camel_case_types, file_names

import 'package:btxproject2/Pages/Library/LibraryQR.dart';
import 'package:btxproject2/consatant/Drawer/Library_Drawer.dart';
import 'package:btxproject2/consatant/responsive.dart';
import 'package:flutter/material.dart';

class Main_Screen_QRLibrary extends StatelessWidget {
  const Main_Screen_QRLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Responsive.isMobile(context) || size.height < 500
          ? Padding(
              padding: const EdgeInsets.all(0),
              child: Drawer(
                child: Library_Drawer(),
              ),
            )
          : null,
      appBar: AppBar(
          actions: [
            Image.asset("assets/img/image2.png"),
            const SizedBox(
              width: 1,
            ),
          ],
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: size.width <= 364 ? 17 : 20,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black),
      body: Responsive(
        // Let's work on our mobile part
        mobile: const QR_Library(),
        tablet: Row(
          children: [
            if (size.height > 500 || size.width < 100)
              Expanded(flex: 2, child: Library_Drawer()),
            const Expanded(
              flex: 5,
              child: QR_Library(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: Library_Drawer(),
            ),
            Expanded(
              flex: size.width > 1340 ? 5 : 7,
              child: const QR_Library(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        Container(
          height: 35,
          color: Colors.black,
          child: Center(
              child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(
                      fontSize: size.width <= 380 ? 10 : 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        )
      ]),
    );
  }
}
