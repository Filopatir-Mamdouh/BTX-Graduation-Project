import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen_Doctor extends StatefulWidget {
  @override
  State<MainScreen_Doctor> createState() => _MainScreen_DoctorState();
}

class _MainScreen_DoctorState extends State<MainScreen_Doctor> {
  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Responsive.isMobile(context) || _size.height < 500
          ? Drawer(
              child: sidemenu(),
            )
          : null,
      appBar: AppBar(
          title: Row(
            children: [
              Image.asset("assets/img/image1.png"),
              const SizedBox(
                width: 1,
              ),
              Text(
                "شئون الطلاب",
                style: TextStyle(fontSize: _size.width <= 364 ? 17 : 20),
              ),
            ],
          ),
          backgroundColor: color1),
      body: Responsive(
        // Let's work on our mobile part
        mobile: Doctor(),
        tablet: Row(
          children: [
            if (_size.height > 500 || _size.width < 100)
              Expanded(flex: 2, child: sidemenu()),
            Expanded(
              flex: 5,
              child: Doctor(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: sidemenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 5 : 7,
              child: Doctor(),
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
