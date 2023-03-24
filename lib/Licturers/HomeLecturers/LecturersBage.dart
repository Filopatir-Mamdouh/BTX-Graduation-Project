import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/consatant/Constant.dart';
import 'package:btxproject2/Licturers/HomeLecturers/Doctor/doctor.dart';
import 'package:btxproject2/consatant/Drawer/DrawerHome.dart';
import 'package:btxproject2/consatant/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/consatant/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Lecturers extends StatelessWidget {
  const Lecturers({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    final Color color1 = HexColor('#3E6BA9');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LecturersProvider(),
        )
      ],
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(child:
                  Consumer<LecturersProvider>(builder: (context, model, child) {
                return Text("${model.Hint}");
              })),
              flex: 1,
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    "مرحبا بك أستاذ/ة ",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<LecturersProvider>(builder: (context, model, child) {
                    return Text(
                      "${model.DoctorName}",
                      style: TextStyle(fontSize: 20),
                    );
                  })
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(""),
                    flex: _size.width < 945 ? 0 : 1,
                  ),
                  Expanded(
                    flex: _size.width < 945 ? 3 : 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // <-- Radius
                            ),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.black87, width: 3),
                            textStyle: TextStyle(
                                fontSize: 25, fontStyle: FontStyle.normal)),
                        child: _size.width < 322
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "البيانات",
                                      style: TextStyle(
                                          fontSize: _size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "الأساسية",
                                      style: TextStyle(
                                          fontSize: _size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    )
                                  ],
                                ),
                              )
                            : Center(
                                child: Text(
                                  "البيانات الأساسية",
                                  style: TextStyle(
                                      fontSize: _size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                  Expanded(
                    child: Text(""),
                    flex: 1,
                  ),
                  Expanded(
                    flex: _size.width < 945 ? 3 : 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // <-- Radius
                            ),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.black87, width: 3),
                            textStyle: TextStyle(
                                fontSize: 25, fontStyle: FontStyle.normal)),
                        child: _size.width < 322
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "تسجيل",
                                      style: TextStyle(
                                          fontSize: _size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "الحضور",
                                      style: TextStyle(
                                          fontSize: _size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    )
                                  ],
                                ),
                              )
                            : Center(
                                child: Text(
                                  "تسجيل الحضور",
                                  style: TextStyle(
                                      fontSize: _size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                  Expanded(
                    child: Text(""),
                    flex: _size.width < 945 ? 0 : 1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(""),
                    flex: _size.width < 945 ? 0 : 1,
                  ),
                  Expanded(
                    flex: _size.width < 945 ? 3 : 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // <-- Radius
                            ),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.black87, width: 3),
                            textStyle: TextStyle(
                                fontSize: 25, fontStyle: FontStyle.normal)),
                        child: _size.width < 322
                            ? Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "البيانات",
                                        style: TextStyle(
                                            fontSize:
                                                _size.width < 500 ? 15 : 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        "التعليمية",
                                        style: TextStyle(
                                            fontSize:
                                                _size.width < 500 ? 15 : 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      )
                                    ]),
                              )
                            : Center(
                                child: Text(
                                  "البيانات التعليمية",
                                  style: TextStyle(
                                      fontSize: _size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                  Expanded(
                    child: Text(""),
                    flex: 1,
                  ),
                  Expanded(
                    flex: _size.width < 945 ? 3 : 2,
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Colors.white,
                                side:
                                    BorderSide(color: Colors.black87, width: 3),
                                textStyle: TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal)),
                            child: _size.width < 322
                                ? Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "الردعلي",
                                          style: TextStyle(
                                              fontSize:
                                                  _size.width < 500 ? 15 : 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                        Text(
                                          "الطلبات",
                                          style: TextStyle(
                                              fontSize:
                                                  _size.width < 500 ? 15 : 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        )
                                      ],
                                    ),
                                  )
                                : Center(
                                    child: Text(
                                      "الرد علي الطلبات",
                                      style: TextStyle(
                                          fontSize: _size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  )),
                        Positioned(
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                )),
                            child: Text(
                              "8",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(""),
                    flex: _size.width < 945 ? 0 : 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Text(""),
                    flex: _size.width < 945 ? 0 : 1,
                  ),
                  TextButton(
                      child: Text(
                        "مقابلة العميد",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      onPressed: () {}),
                  Expanded(
                    child: Text(""),
                    flex: _size.width < 945 ? 0 : 1,
                  ),
                ],
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
