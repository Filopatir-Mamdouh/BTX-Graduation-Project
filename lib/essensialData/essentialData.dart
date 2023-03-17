import 'dart:developer';
import 'package:btxproject2/Constant.dart';
import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/consatant/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/essensialData/communicate.dart';
import 'package:btxproject2/essensialData/parents.dart';
import 'package:btxproject2/essensialData/main_screen_essentialData.dart';
import 'package:btxproject2/essensialData/personality.dart';
import 'package:btxproject2/essensialData/previousQualification.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class essentialData extends StatelessWidget {
  final Color color1 = HexColor('#3E6BA9');

  Container _Scaffold = Container();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ScaffoldEssensialData(),
        ),
      ],
      child: SafeArea(
          child: Scaffold(
        //drawer here

        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Container(
                      width: 600,
                      color: Colors.white,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text("البيانات الأساسية"),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          color: color1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 8,
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    child: new Text(
                                      "الشخصية",
                                      style: TextStyle(
                                          fontSize:
                                              _size.width <= 410 ? 10 : 15),
                                    ),
                                    textColor: model.Personality == true
                                        ? color1
                                        : Colors.white,
                                    color: model.Personality == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.PersonalityScaffold();
                                    },
                                  );
                                }),
                              ),
                              Expanded(
                                flex: 8,
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    child: new Text(
                                      "الأتصال",
                                      style: TextStyle(
                                          fontSize:
                                              _size.width <= 410 ? 10 : 15),
                                    ),
                                    textColor: model.Communication == true
                                        ? color1
                                        : Colors.white,
                                    color: model.Communication == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.CommunicateScaffold();
                                    },
                                  );
                                }),
                              ),
                              Expanded(
                                flex: 8,
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    child: new Text(
                                      "ولي الأمر",
                                      style: TextStyle(
                                          fontSize:
                                              _size.width <= 410 ? 10 : 15),
                                    ),
                                    textColor: model.Parents == true
                                        ? color1
                                        : Colors.white,
                                    color: model.Parents == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.ParentsScaffold();
                                    },
                                  );
                                }),
                              ),
                              Expanded(
                                flex: 11,
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    child: Text(
                                      "المؤهل السابق",
                                      style: TextStyle(
                                          fontSize:
                                              _size.width <= 410 ? 10 : 15),
                                    ),
                                    textColor:
                                        model.PreviousQualification == true
                                            ? color1
                                            : Colors.white,
                                    color: model.PreviousQualification == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.PreviousScaffold();
                                    },
                                  );
                                }),
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
                            child: Consumer<ScaffoldEssensialData>(
                                builder: (context, model, child) {
                              return model.Scaffold;
                            }),
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
      )),
    );
  }
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


