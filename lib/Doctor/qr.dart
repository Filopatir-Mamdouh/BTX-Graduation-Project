import 'dart:async';
import 'dart:developer';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:btxproject2/Doctor/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class QR extends StatefulWidget {
  const QR({super.key});

  @override
  State<QR> createState() => _QRState();
}

class _QRState extends State<QR> {
  @override
  Widget build(BuildContext context) {
    int _counter = 0;
    String val;
    String qrstr = "d";
    bool check = false;
    void _incrementCounter() {
      Future.delayed(Duration(seconds: 5, days: 0, hours: 0, minutes: 0));
      setState(() {
        _counter++;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Creating QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 400,
                width: 400,
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Timer.periodic(
                              Duration(
                                  seconds: 5,
                                  days: 0,
                                  hours: 0,
                                  minutes: 0), (timer) {
                            setState(() {
                              check = true;
                              _counter++;
                              val = _counter.toString();
                              qrstr = val;
                            });
                          });
                        },
                        child: Text("Create QR")),
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
            SizedBox(
              height: 10,
            ),
            Text("$_counter"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check = false;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Doctor(),
                        ));
                  });
                },
                child: Text("close QR"))
          ],
        ),
      ),
    );
  }
}
