// ignore_for_file: file_names, camel_case_types, sized_box_for_whitespace

import 'package:btxproject2/Screens/Library/Main_Screen_QRLibrary.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Library_Home extends StatelessWidget {
  const Library_Home({super.key});

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LibraryBage(),
        )
      ],
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "المكتبة",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Expanded(
              child: Consumer<LibraryBage>(
                builder: (context, model, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        model.Hint,
                        style: const TextStyle(fontSize: 14),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: size.width < 350 ? 2 : 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: size.width < 700
                        ? size.width < 350
                            ? 100
                            : null
                        : 240,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: size.width < 700
                            ? ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 53),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: Colors.black87, width: 3),
                                textStyle: const TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal))
                            : ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: Colors.black87, width: 3),
                                textStyle: const TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal)),
                        child: size.width < 350
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "الكتب",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "الحالية",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    )
                                  ],
                                ),
                              )
                            : Center(
                                child: Text(
                                  "الكتب الحالية",
                                  style: TextStyle(
                                      fontSize: size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                  Container(
                    width: size.width < 700
                        ? size.width < 350
                            ? 100
                            : null
                        : 240,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: size.width < 700
                            ? ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 53),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: Colors.black87, width: 3),
                                textStyle: const TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal))
                            : ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: Colors.black87, width: 3),
                                textStyle: const TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal)),
                        child: size.width < 350
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "الأجهزة",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "المتاحة",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    )
                                  ],
                                ),
                              )
                            : Center(
                                child: Text(
                                  "الأجهزة المتاحة",
                                  style: TextStyle(
                                      fontSize: size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: size.width < 350 ? 2 : 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width < 700
                        ? size.width < 350
                            ? 100
                            : null
                        : 240,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Main_Screen_QRLibrary(),
                              ));
                        },
                        style: size.width < 700
                            ? ElevatedButton.styleFrom(
                                fixedSize: const Size(170, 53),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: Colors.black87, width: 3),
                                textStyle: const TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal))
                            : ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(25), // <-- Radius
                                ),
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: Colors.black87, width: 3),
                                textStyle: const TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal)),
                        child: size.width < 350
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "عرض",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "QR Code",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    )
                                  ],
                                ),
                              )
                            : Center(
                                child: Text(
                                  "عرض QR Code",
                                  style: TextStyle(
                                      fontSize: size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(child: Expanded(
                child: Consumer<LibraryBage>(builder: (context, model, child) {
              return Text("الأماكن المتاحة : ${model.Available_places}");
            }))),
            Center(child: Expanded(
                child: Consumer<LibraryBage>(builder: (context, model, child) {
              return Text(" حالة المكتبة الأن : ${model.Library_State}");
            }))),
            const Expanded(flex: 2, child: Text(""))
          ],
        ),
      ),
    );
  }
}
