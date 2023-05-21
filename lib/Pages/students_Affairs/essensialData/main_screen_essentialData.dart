// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:btxproject2/consatant/Constant.dart';
import 'package:btxproject2/consatant/Drawer/affairs_side_menu.dart';
import 'package:btxproject2/Pages/students_Affairs/essensialData/essentialData.dart';
import 'package:btxproject2/consatant/responsive.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class MainScreen_essentialData extends StatelessWidget {
  const MainScreen_essentialData({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Responsive.isMobile(context) || size.height < 500
          ? const Drawer(
              child: sidemenu(),
            )
          : null,
      appBar: AppBar(
          actions: [
            Image.asset("assets/img/image1.png"),
            const SizedBox(
              width: 1,
            ),
          ],
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Text(
                  "شئون الطلاب",
                  style: TextStyle(
                    fontSize: size.width <= 364 ? 17 : 20,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: color1),
      body: Responsive(
        // Let's work on our mobile part
        mobile: essentialData(),
        tablet: Row(
          children: [
            if (size.height > 500 || size.width < 100)
              const Expanded(flex: 2, child: sidemenu()),
            Expanded(
              flex: 5,
              child: essentialData(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 2,
              child: const sidemenu(),
            ),
            Expanded(
              flex: size.width > 1340 ? 5 : 7,
              child: essentialData(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        Container(
          height: 35,
          color: color1,
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
