import 'dart:async';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:btxproject2/Licturers/HomeLecturers/Doctor/Attendance/doctor.dart';
import 'package:flutter/material.dart';

class QR extends StatefulWidget {
  const QR({super.key});

  @override
  State<QR> createState() => _QRState();
}

class _QRState extends State<QR> {
  @override
  Widget build(BuildContext context) {
    int counter = 0;
    String val;
    String qrstr = "d";
    bool check = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 400,
                width: 400,
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Timer.periodic(
                              const Duration(
                                  seconds: 5,
                                  days: 0,
                                  hours: 0,
                                  minutes: 0), (timer) {
                            setState(() {
                              check = true;
                              counter++;
                              val = counter.toString();
                              qrstr = val;
                            });
                          });
                        },
                        child: const Text("Create QR")),
                    if (check == true)
                      BarcodeWidget(
                        data: qrstr,
                        barcode: Barcode.qrCode(),
                        color: Colors.blue,
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("$counter"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check = false;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Doctor(),
                        ));
                  });
                },
                child: const Text("close QR"))
          ],
        ),
      ),
    );
  }
}
