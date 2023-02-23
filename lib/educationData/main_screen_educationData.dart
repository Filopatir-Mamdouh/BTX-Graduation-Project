import 'package:btxproject2/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/educationData/educationData.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen_educationData extends StatefulWidget {
  @override
  State<MainScreen_educationData> createState() =>
      _MainScreen_educationDataState();
}

class _MainScreen_educationDataState extends State<MainScreen_educationData> {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: Row(children: [
          if (_size.height < 500) Expanded(flex: 2, child: sidemenu()),
          Expanded(flex: 5, child: educatinData())
        ]),
        tablet: Row(
          children: [
            if (_size.height > 500 || _size.width < 100)
              Expanded(flex: 2, child: sidemenu()),
            Expanded(
              flex: 5,
              child: educatinData(),
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
              child: educatinData(),
            ),
          ],
        ),
      ),
    );
  }
}
