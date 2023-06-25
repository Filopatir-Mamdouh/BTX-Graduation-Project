import 'package:graduation_project/Pages/Library/Main_Screen_QRLibrary.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'available_devices_responsive.dart';
import 'books_responsive.dart';

class LibraryHome extends StatelessWidget {
  const LibraryHome({super.key});

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
                        model.hint,
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
                  SizedBox(
                    width: size.width < 700
                        ? size.width < 350
                            ? 100
                            : null
                        : 240,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context as BuildContext,
                            MaterialPageRoute(
                                builder: (context) => books_responsive()),
                          );
                        }, //books_responsive
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
                  SizedBox(
                    width: size.width < 700
                        ? size.width < 350
                            ? 100
                            : null
                        : 240,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context as BuildContext,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Available_devices_responsive()),
                          );
                        }, //Available_devices_responsive
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
                  SizedBox(
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
                                    const MainScreenQRLibrary(),
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
              return Text("الأماكن المتاحة : ${model.availableplaces}");
            }))),
            Center(child: Expanded(
                child: Consumer<LibraryBage>(builder: (context, model, child) {
              return Text(" حالة المكتبة الأن : ${model.libraryState}");
            }))),
            const Expanded(flex: 2, child: Text(""))
          ],
        ),
      ),
    );
  }
}
