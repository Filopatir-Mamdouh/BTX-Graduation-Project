// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import '../../Provider/backend/apiprovider.dart';

class Lecturers extends ConsumerWidget {
  const Lecturers({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final insModel = ref.watch(insProvider);
    Size size = MediaQuery.of(context).size;
    return insModel.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err \n'),
      data: (context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Center(
                  child: Text(
                      'تقوم الأوطان على كاهل ثلاثة: فلاح يغذيه، جندي يحميه، ومعلم يربيه')),
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
                  Consumer(builder: (context, ref, child) {
                    return Text(
                      insModel.value?.insName ?? '',
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
