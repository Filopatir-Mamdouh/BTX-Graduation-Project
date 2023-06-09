import 'dart:math';

import 'package:graduation_project/Provider/Provider.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:timer_builder/timer_builder.dart';

class QR extends StatelessWidget {
  const QR({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color1 = HexColor('#3E6BA9');
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    String qrData = "";
    int counter = 0;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LecturersProvider(),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
            actions: [
              Image.asset("assets/b3.jpeg"),
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
            Consumer<LecturersProvider>(
              builder: (context, value, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 400,
                        child: TimerBuilder.periodic(
                          const Duration(seconds: 5),
                          builder: (context) {
                            List<String> data = [
                              value.selectedTeams.toString(),
                              value.selectedSubjects.toString(),
                              value.date.toString(),
                            ];
                            counter != 0 ? data.removeLast() : null;
                            qrData = generateRandomData(10);
                            value.allCodes.add(qrData);
                            data.add(qrData);
                            counter++; // Generate new data for the QR code
                            return QrImage(
                              data: data.toString(),
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

String generateRandomData(int length) {
  const chars =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*#";
  final random = Random();
  return String.fromCharCodes(
    Iterable.generate(
      length,
      (_) => chars.codeUnitAt(random.nextInt(chars.length)),
    ),
  );
}
