import 'dart:developer';
import 'package:btxproject2/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/essensialData/communicate.dart';
import 'package:btxproject2/essensialData/parents.dart';
import 'package:btxproject2/essensialData/main_screen_essentialData.dart';
import 'package:btxproject2/essensialData/personality.dart';
import 'package:btxproject2/essensialData/previousQualification.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class essentialData extends StatefulWidget {
  const essentialData({
    super.key,
  });

  @override
  State<essentialData> createState() => _essentialDataState();
}

class _essentialDataState extends State<essentialData> {
  final Color color1 = HexColor('#3E6BA9');
  Container _Scaffold = Container();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        //drawer here
        drawer: Responsive.isMobile(context) && _size.height > 500
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 600,
                    color: Colors.white,
                    child: Column(children: [
                      Text("البيانات الأساسية"),
                      Container(
                        padding: EdgeInsets.all(2),
                        color: color1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: MaterialButton(
                                child: new Text(
                                  "الشخصية",
                                  style: TextStyle(
                                      fontSize: _size.width <= 364 ? 10 : 15),
                                ),
                                textColor: _Scaffold == personality
                                    ? color1
                                    : Colors.white,
                                color: _Scaffold == personality
                                    ? Colors.white
                                    : color1,
                                onPressed: () {
                                  setState(() {
                                    _Scaffold = personality;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: MaterialButton(
                                child: new Text(
                                  "الأتصال",
                                  style: TextStyle(
                                      fontSize: _size.width <= 364 ? 10 : 15),
                                ),
                                textColor: _Scaffold == communicate
                                    ? color1
                                    : Colors.white,
                                color: _Scaffold == communicate
                                    ? Colors.white
                                    : color1,
                                onPressed: () {
                                  setState(() {
                                    _Scaffold = communicate;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: MaterialButton(
                                child: new Text(
                                  "ولي الأمر",
                                  style: TextStyle(
                                      fontSize: _size.width <= 364 ? 10 : 15),
                                ),
                                textColor: _Scaffold == parents
                                    ? color1
                                    : Colors.white,
                                color: _Scaffold == parents
                                    ? Colors.white
                                    : color1,
                                onPressed: () {
                                  setState(() {
                                    _Scaffold = parents;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: MaterialButton(
                                child: new Text(
                                  "المؤهل السابق",
                                  style: TextStyle(
                                      fontSize: _size.width <= 364 ? 10 : 15),
                                ),
                                textColor: _Scaffold == previousQualification
                                    ? color1
                                    : Colors.white,
                                color: _Scaffold == previousQualification
                                    ? Colors.white
                                    : color1,
                                onPressed: () {
                                  setState(() {
                                    _Scaffold = previousQualification;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          width: 600,
                          height: 600,
                          padding: EdgeInsets.all(40),
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: color1)),
                          child: _Scaffold,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

// bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_left), label: 'السابق'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'البيانات التعليمية',
//             backgroundColor: Colors.purple,
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_right), label: 'التالي'),
//         ],
//       ),


