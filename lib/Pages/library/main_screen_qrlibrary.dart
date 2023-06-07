import 'package:graduation_project/constant/drawer/library_drawer.dart';
import 'package:graduation_project/constant/responsive.dart';
import 'package:graduation_project/pages/library/library_qr.dart';
import 'package:flutter/material.dart';

class MainScreenQRLibrary extends StatelessWidget {
  const MainScreenQRLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Responsive.isMobile(context) || size.height < 500
          ? const Padding(
              padding: EdgeInsets.all(0),
              child: Drawer(
                child: LibraryDrawer(),
              ),
            )
          : null,
      appBar: AppBar(
          actions: [
            Image.asset("assets/img/image2.png"),
            const SizedBox(
              width: 1,
            ),
          ],
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: size.width <= 364 ? 17 : 20,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.black),
      body: Responsive(
        // Let's work on our mobile part
        mobile: const QRLibrary(),
        tablet: Row(
          children: [
            if (size.height > 500 || size.width < 100)
              const Expanded(flex: 2, child: LibraryDrawer()),
            const Expanded(
              flex: 5,
              child: QRLibrary(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: const LibraryDrawer(),
            ),
            Expanded(
              flex: size.width > 1340 ? 5 : 7,
              child: const QRLibrary(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
        Container(
          height: 35,
          color: Colors.black,
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
}
