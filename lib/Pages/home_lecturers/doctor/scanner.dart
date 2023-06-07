import 'dart:io';

import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  @override
  Future<void> reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
      await controller?.resumeCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () {},
          ),
          title: SafeArea(
            child: Row(
              children: [
                Image.asset("assets/img/image1.png"),
                const SizedBox(
                  width: 1,
                ),
                Text("شئون الطلاب",
                    style: TextStyle(fontSize: size.width <= 364 ? 15 : 20)),
              ],
            ),
          ),
          backgroundColor: color1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400,
                      height: 400,
                      child: Column(children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 170),
                            child: QRView(
                              key: qrKey,
                              onQRViewCreated: _onQRViewCreated,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: (result != null)
                                ? Text(
                                    'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                                : const Text('Scan a code'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text("الاسم :"),
                      Text("القرقه :"),
                      Text("القسم :"),
                      Text("التاريخ :"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        Container(
          height: 35,
          color: color1,
          child: Center(
              child: Text(
                  "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                  style: TextStyle(
                      fontSize: size.width <= 380 ? 10 : 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
        )
      ]),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
