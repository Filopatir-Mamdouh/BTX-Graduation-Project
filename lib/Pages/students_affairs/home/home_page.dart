// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: Text(""),
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
              children: const [
                Text(
                  "الأسم",
                  style: TextStyle(fontSize: 20),
                )
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
                  flex: size.width < 945 ? 0 : 1,
                  child: const Text(""),
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
                          side:
                              const BorderSide(color: Colors.black87, width: 3),
                          textStyle: const TextStyle(
                              fontSize: 25, fontStyle: FontStyle.normal)),
                      child: size.width < 322
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "بيانات",
                                    style: TextStyle(
                                        fontSize: size.width < 500 ? 15 : 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  Text(
                                    "الطلبة",
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
                                "بيانات الطلبة",
                                style: TextStyle(
                                    fontSize: size.width < 500 ? 15 : 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            )),
                ),
                const Expanded(
                  flex: 1,
                  child: Text(""),
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
                          side:
                              const BorderSide(color: Colors.black87, width: 3),
                          textStyle: const TextStyle(
                              fontSize: 25, fontStyle: FontStyle.normal)),
                      child: size.width < 322
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "بيانات",
                                    style: TextStyle(
                                        fontSize: size.width < 500 ? 15 : 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  Text(
                                    "المحاضرين",
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
                                "بيانات المحاضرين",
                                style: TextStyle(
                                    fontSize: size.width < 500 ? 15 : 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            )),
                ),
                Expanded(
                  flex: size.width < 945 ? 0 : 1,
                  child: const Text(""),
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
                  flex: size.width < 945 ? 0 : 1,
                  child: const Text(""),
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
                          side:
                              const BorderSide(color: Colors.black87, width: 3),
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
                                      "التعليمية",
                                      style: TextStyle(
                                          fontSize: size.width < 500 ? 15 : 20,
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
                  flex: 1,
                  child: Text(""),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                    "الرد علي الطلبات",
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
                            "8",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: size.width < 945 ? 0 : 1,
                  child: const Text(""),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Text(""),
          )
        ],
      ),
    );
  }
}
