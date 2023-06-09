import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRLibrary extends StatelessWidget {
  const QRLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LibraryQR(),
        )
      ],
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<LibraryQR>(builder: (context, model, child) {
                return QrImage(
                  data: model.data.toString(),
                  version: QrVersions.auto,
                  size: 200.0,
                );
                // return BarcodeWidget(
                //   data: model.data.toString(),
                //   barcode: Barcode.qrCode(),
                // );
              }),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Consumer<LibraryQR>(builder: (context, model, child) {
                    return Text("الإسم : ${model.name}");
                  })
                ],
              ),
              Row(
                children: [
                  Consumer<LibraryQR>(builder: (context, model, child) {
                    return Text("الفرقة : ${model.team}");
                  })
                ],
              ),
              Row(
                children: [
                  Consumer<LibraryQR>(builder: (context, model, child) {
                    return Text("القسم : ${model.section}");
                  })
                ],
              ),
              Row(
                children: [
                  Consumer<LibraryQR>(builder: (context, model, child) {
                    return Text("التاريخ : ${model.dateToday}");
                  })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
