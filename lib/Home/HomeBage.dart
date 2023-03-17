import 'package:btxproject2/Constant.dart';
import 'package:btxproject2/Doctor/doctor.dart';
import 'package:btxproject2/consatant/Drawer/DrawerHome.dart';
import 'package:btxproject2/consatant/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    final Color color1 = HexColor('#3E6BA9');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(""),
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
                Text(
                  "الأسم",
                  style: TextStyle(fontSize: 20),
                )
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
                      child: Center(
                        child: Text(
                          "بيانات الطلبة",
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
                      child: _size.width < 280
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "بيانات",
                                    style: TextStyle(
                                        fontSize: _size.width < 500 ? 15 : 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  Text(
                                    "المحاضرين",
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
                                "بيانات المحاضرين",
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
                      child: _size.width < 280
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
                                      "التعليمية",
                                      style: TextStyle(
                                          fontSize: _size.width < 500 ? 15 : 20,
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
                              side: BorderSide(color: Colors.black87, width: 3),
                              textStyle: TextStyle(
                                  fontSize: 25, fontStyle: FontStyle.normal)),
                          child: _size.width < 280
                              ? Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
            child: Text(""),
            flex: 2,
          )
        ],
      ),
    );
  }
}
