import 'dart:async';

import 'package:btxproject2/Screens/HomeLecturers/Doctor/Attendance/doctor.dart';
import 'package:btxproject2/Provider/Provider.dart';
import 'package:btxproject2/consatant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:timer_builder/timer_builder.dart';

class QR extends StatefulWidget {
  const QR({super.key});

  @override
  State<QR> createState() => _QRState();
}

class _QRState extends State<QR> {
  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    String qrData = "";
    int counter = 0;
    String val;
    String qrstr = "d";
    bool check = false;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Doctor_Attendance(),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
            actions: [
              Image.asset("assets/img/image1.png"),
              const SizedBox(
                width: 1,
              ),
            ],
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 1),
                  child: Text(
                    "شئون الطلاب",
                    style: TextStyle(
                      fontSize: size.width <= 364 ? 17 : 20,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: color1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Doctor_Attendance>(
              builder: (context, value, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 400,
                        width: 400,
                        child: TimerBuilder.periodic(
                          Duration(seconds: 5),
                          builder: (context) {
                            qrData = generateRandomData(
                                10); // Generate new data for the QR code
                            return QrImage(
                              data: qrData,
                              version: QrVersions.auto,
                              size: 200.0,
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
