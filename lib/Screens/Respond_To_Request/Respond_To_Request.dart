// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:btxproject2/consatant/Constant.dart';
import 'package:flutter/material.dart';

class Respond_To_Request extends StatelessWidget {
  const Respond_To_Request({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color greyText = const Color(0xFF707070);
    final Color color1 = HexColor('#3E6BA9');
    final List<Map> Question = List.generate(
        10,
        (index) => {
              "id": index,
              "السؤال":
                  "gftdresdxfcgvhbjkoiuytfrdfghjkoiuytrdedfghjkoiuytfrdfcgvhbjkijuytfrdfcgvhbnjklhygftrdedfghjkouygtfdredfghjkoiuytrdedfcgvhbjjkhgftrdxcvbhnjkijhuygftrdfcgvhbjkiuytrdrfghjikoiuytrdfghjiuytrdfcgvhbjoiuy76trdfcgvhjkoiuytrffgvhjkiuytrdfcgvhbnjkoiuytfrgvhbnjkoiuytrffgvhjkoiuy76trdfghjiuy76trfghjiuy76tr5fghjikoiuyt6rfghjkoiuytrffgvhjkiuytfghjiuytrfghjoiuy76trfghjiuytrfghjiuytrfghjiuy76trftghujiuytrdftgyuh",
              "الراسل": "بافلي"
            }).toList();

    return Scaffold(
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text("الرد علي الإستفسارات و الطلبات",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  right: size.width < 850 ? 0 : 40,
                  left: size.width < 850 ? 0 : 40),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: ((MediaQuery.of(context).size.width) /
                            (MediaQuery.of(context).size.height)) /
                        .865),
                itemCount: Question.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: color1, width: 8)),
                      child: Column(
                        children: [
                          // _size.width < 1100
                          //     ?
                          SingleChildScrollView(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 15, right: 15),
                                child: Container(
                                    child: Text(
                                  Question[index]["السؤال"],
                                  style: const TextStyle(fontSize: 16),
                                  maxLines: 12,
                                )),
                              ),
                            ),
                          )
                          // : Padding(
                          //     padding: const EdgeInsets.only(
                          //         top: 10, left: 15, right: 15),
                          //     child: Container(
                          //         child: Text(Question[index]["السؤال"])),
                          //   )
                          ,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, bottom: 5),
                                child: Text(Question[index]["الراسل"]),
                              )
                            ],
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 50),
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                minLines: 20,
                                decoration: InputDecoration(
                                    constraints:
                                        const BoxConstraints.tightForFinite(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: greyText, width: 1))),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, top: 3, bottom: 3),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: const RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Colors.black, width: 2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)))),
                                    child: const Text("إرسال")),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
