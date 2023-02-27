import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/constants.dart';

class Inquiries_page_Class extends StatelessWidget {
  const Inquiries_page_Class({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        new Container(
          height: 25,
          color: Color(0xFF3E6BA9),
          child: Center(
              child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        )
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "شئون الطلاب",
                      style: TextStyle(fontSize: 30, color: grey_text),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  "مرحباً بك إن أردت أن تستفسر عن شئ",
                  style: TextStyle(fontSize: 20, color: grey_text),
                ),
                Text(
                  "فلا تتردد بمراسلتنا عبر التطبيق",
                  style: TextStyle(fontSize: 20, color: grey_text),
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  width: 480,
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "أدخل استفسارك",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: grey_text),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: grey_text)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "أرسل استفسارك",
                    style: TextStyle(color: grey_text, fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 1, color: Colors.black),
                    primary: Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 17),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "رد آخر استفسار",
                  style: TextStyle(fontSize: 22, color: grey_text),
                ),
                Container(
                  width: 340,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: grey_text),
                    borderRadius: const BorderRadius.all(Radius.circular(1)),
                  ),
                  child: Center(
                    child: Text(
                      "السؤال",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 340,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: grey_text),
                    borderRadius: const BorderRadius.all(Radius.circular(1)),
                  ),
                  child: Center(
                    child: Text(
                      "الاجابة ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 280,
                  height: 1,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: grey_text),
                    borderRadius: const BorderRadius.all(Radius.circular(1)),
                  ),
                ),
                Container(
                    child:

                        // ignore: prefer_const_literals_to_create_immutables
                        Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Column(
                    children: [
                      Text(
                        "موظفي شئون الطلاب",
                        style: TextStyle(fontSize: 22),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          "1- الاسم",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          "2-الاسم",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
