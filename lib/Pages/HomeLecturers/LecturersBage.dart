// ignore_for_file: sort_child_properties_last, file_names

import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Lecturers extends StatelessWidget {
  const Lecturers({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                return Text(model.Hint);
              })),
              flex: 1,
            ),
            Expanded(
              child: Row(
                children: const [
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
                      model.DoctorName,
                      style: const TextStyle(fontSize: 20),
                    );
                  })
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: const Text(""),
                    flex: size.width < 945 ? 0 : 1,
                  ),
                  Expanded(
                    flex: size.width < 945 ? 3 : 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // <-- Radius
                            ),
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                                color: Colors.black87, width: 3),
                            textStyle: const TextStyle(
                                fontSize: 25, fontStyle: FontStyle.normal)),
                        child: size.width < 322
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "البيانات",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "الأساسية",
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
                                  "البيانات الأساسية",
                                  style: TextStyle(
                                      fontSize: size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                  const Expanded(
                    child: Text(""),
                    flex: 1,
                  ),
                  Expanded(
                    flex: size.width < 945 ? 3 : 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // <-- Radius
                            ),
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                                color: Colors.black87, width: 3),
                            textStyle: const TextStyle(
                                fontSize: 25, fontStyle: FontStyle.normal)),
                        child: size.width < 322
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "تسجيل",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                    Text(
                                      "الحضور",
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
                                  "تسجيل الحضور",
                                  style: TextStyle(
                                      fontSize: size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                  Expanded(
                    child: const Text(""),
                    flex: size.width < 945 ? 0 : 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: const Text(""),
                    flex: size.width < 945 ? 0 : 1,
                  ),
                  Expanded(
                    flex: size.width < 945 ? 3 : 2,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25), // <-- Radius
                            ),
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                                color: Colors.black87, width: 3),
                            textStyle: const TextStyle(
                                fontSize: 25, fontStyle: FontStyle.normal)),
                        child: size.width < 322
                            ? Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "البيانات",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 500 ? 15 : 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      ),
                                      Text(
                                        "التعليمية",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 500 ? 15 : 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87),
                                      )
                                    ]),
                              )
                            : Center(
                                child: Text(
                                  "البيانات التعليمية",
                                  style: TextStyle(
                                      fontSize: size.width < 500 ? 15 : 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                              )),
                  ),
                  const Expanded(
                    child: Text(""),
                    flex: 1,
                  ),
                  Expanded(
                    flex: size.width < 945 ? 3 : 2,
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
                                side: const BorderSide(
                                    color: Colors.black87, width: 3),
                                textStyle: const TextStyle(
                                    fontSize: 25, fontStyle: FontStyle.normal)),
                            child: size.width < 322
                                ? Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "الردعلي",
                                          style: TextStyle(
                                              fontSize:
                                                  size.width < 500 ? 15 : 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        ),
                                        Text(
                                          "الطلبات",
                                          style: TextStyle(
                                              fontSize:
                                                  size.width < 500 ? 15 : 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black87),
                                        )
                                      ],
                                    ),
                                  )
                                : Center(
                                    child: Text(
                                      "المحادثة",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),
                                  )),
                        Positioned(
                          top: 0,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                )),
                            child: const Text(
                              "  ",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: const Text(""),
                    flex: size.width < 945 ? 0 : 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: const Text(""),
                    flex: size.width < 945 ? 0 : 1,
                  ),
                  TextButton(
                      child: const Text(
                        "مقابلة العميد",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      onPressed: () {}),
                  Expanded(
                    child: const Text(""),
                    flex: size.width < 945 ? 0 : 1,
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
