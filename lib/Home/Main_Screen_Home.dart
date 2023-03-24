import 'package:btxproject2/Constant.dart';
import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/Home/HomeBage.dart';
import 'package:btxproject2/consatant/Drawer/DrawerHome.dart';
import 'package:btxproject2/consatant/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';

class Main_Screen_Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Responsive.isMobile(context) || _size.height < 500
          ? Padding(
              padding: const EdgeInsets.all(0),
              child: Drawer(
                child: DrawerHome(),
              ),
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
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  "شئون الطلاب",
                  style: TextStyle(
                    fontSize: _size.width <= 364 ? 17 : 20,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: color1),
      body: Responsive(
        // Let's work on our mobile part
        mobile: Home(),
        tablet: Row(
          children: [
            if (_size.height > 500 || _size.width < 100)
              Expanded(flex: 2, child: DrawerHome()),
            Expanded(
              flex: 5,
              child: Home(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: DrawerHome(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 5 : 7,
              child: Home(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        new Container(
          height: 35,
          color: color1,
          child: Center(
              child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(
                      fontSize: _size.width <= 380 ? 10 : 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        )
      ]),
    );
  }
}