// ignore_for_file: sized_box_for_whitespace

import 'package:btxproject2/Drawer/affairs_side_menue.dart';
import 'package:btxproject2/qr.dart';
import 'package:btxproject2/responsive.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  final TextEditingController _date = TextEditingController();
  final Color color1 = HexColor('#3E6BA9');
  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';
    Size? size = MediaQuery.of(context).size;

    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return SafeArea(
        child: Scaffold(
            drawer: Responsive.isMobile(context) || size.height < 500
                ? Drawer(child: sidemenu())
                : null,
            appBar: AppBar(
                title: Row(
                  children: [
                    Image.asset("assets/img/image1.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("تسجيل الحضور "),
                  ],
                ),
                backgroundColor: color1),
            body: SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "الفرقة",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  width: 300,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black87, width: 3),
                                  ),
                                  child: Center(
                                    child: DropdownButton(
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                      isExpanded: true,
                                      underline: Container(),
                                      value: dropdownvalue,

                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          alignment:
                                              AlignmentDirectional.center,
                                          value: items,
                                          child: Text(
                                            items,
                                            style: const TextStyle(
                                                color: Colors.black87),
                                          ),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "الماده",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black87, width: 3),
                                  ),
                                  width: 300,
                                  child: Center(
                                    child: DropdownButton(
                                      dropdownColor: Colors.white,
                                      isExpanded: true,

                                      underline: Container(),
                                      value: dropdownvalue,
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          alignment:
                                              AlignmentDirectional.center,
                                          value: items,
                                          child: Text(
                                            items,
                                            style: const TextStyle(
                                                color: Colors.black87),
                                          ),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "التاريخ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  width: 300,
                                  child: TextField(
                                    controller: _date,
                                    // ignore: prefer_const_constructors
                                    decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        // ignore: prefer_const_constructors
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black87,
                                                width: 3)),
                                        icon: const Icon(
                                            Icons.calendar_today_rounded),
                                        labelText: "Select Date"),
                                    onTap: () async {
                                      DateTime? date = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2101));
                                      if (date != null) {
                                        setState(() {
                                          _date.text = DateFormat('yyyy-MM-dd')
                                              .format(date);
                                        });
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "تسجيل حضور الطلبه لماده ...... ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const Text("الفرقه ......",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            const Text("بتاريخ .....",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              width: 150,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          25), // <-- Radius
                                    ),
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(
                                        color: Colors.black87, width: 3),
                                    textStyle: const TextStyle(
                                        fontSize: 25,
                                        fontStyle: FontStyle.normal)),
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => QR()));
                                  });
                                },

                                // ignore: prefer_const_constructors
                                child: Center(
                                  widthFactor: 100,
                                  child: const Text(
                                    "عرض\nQR Code",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
