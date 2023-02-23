import 'dart:async';
import 'dart:io';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class QR extends StatefulWidget {
  const QR({super.key});

  @override
  State<QR> createState() => _QRState();
}

class _QRState extends State<QR> {
  var strdata = "add data";

  @override
  Widget build(BuildContext context) {
    BarcodeWidget _barcode =
        BarcodeWidget(data: strdata, barcode: Barcode.qrCode());
    var duration1 = Duration(seconds: 5);

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('QR'),
            ),
            body: Column(
              children: [
                Container(
                  width: 500,
                  height: 500,
                  child: _barcode,
                ),
              ],
            )));
  }
}
