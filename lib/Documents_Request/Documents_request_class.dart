import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:footer/footer.dart';
import 'package:graduation_project/Documents_Request/Documrnts_Drop_down.dart';

class documents_request_class extends StatefulWidget {
  const documents_request_class({super.key});

  @override
  State<documents_request_class> createState() => _testState();
}

class _testState extends State<documents_request_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "طلب المستندات",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF707070)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(1)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "المستند",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF707070)),
                        ),
                        const SizedBox(
                          width: 50,
                        ),

                        //this is Drop down menu

                        Container(
                          width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(1)),
                          ),
                          child: Documrnts_DropDown(),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 500,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(1)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 89),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 65,
                        ),
                        Text(
                          "Text",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF707070)),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Center(
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(1)),
                            ),
                            child: Center(
                                child: Text(
                              "لمن يهمه الامر",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF3E6BA9),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "ارسال الطلب",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 2, color: Colors.black),
                    primary: Color(0xFF3E6BA9),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
