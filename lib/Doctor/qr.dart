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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    String val;
    String qrstr = "d";
    bool check = true;
    void _incrementCounter() {
      Future.delayed(Duration(seconds: 5));
      setState(() {
        _counter++;
        val = Text("$_counter").toString();
        qrstr = val;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Creating QR code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                for (check; check = true; _incrementCounter())
                  BarcodeWidget(
                    // ignore: deprecated_member_use
                    data: qrstr,
                    barcode: Barcode.qrCode(),
                    color: Colors.blue,
                    height: 250,
                    width: 250,
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
          )
        ],
      ),
    );
  }
}
