import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:graduation_project/Pages/affairs_main_page/side_menue.dart';
import 'package:graduation_project/Pages/library/available_devices_screen.dart';

import 'package:graduation_project/core/app_colors.dart';

import '../../constant/drawer/library_drawer.dart';
import '../../constant/responsive.dart';

class Available_devices_responsive extends StatelessWidget {
  PageController page = PageController();

  late final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: MaterialApp(
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
          ],
          locale: const Locale(
              "ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
          title: 'المكتبة',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: AppColors.grey,
                child: const Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: const DevicesScreen(),
            appBar: AppBar(
              backgroundColor: AppColors.grey, // Will work
              title: Row(
                children: [
                  Image.asset('b2.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("المكتبة"),
                ],
              ),
            ),
            drawer: const Drawer(
              child: LibraryDrawer(),
            ),
          ),
        ),

        //desktop view
        desktop: MaterialApp(
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
          ],
          locale: const Locale(
              "ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
          title: 'المكتبة',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: AppColors.grey,
                child: const Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: Row(
              children: const [
                Flexible(
                  flex: 2,
                  child: LibraryDrawer(),
                ),
                Flexible(
                  flex: 7,
                  child: DevicesScreen(),
                ),
              ],
            ),
            appBar: AppBar(
              backgroundColor: AppColors.grey, // Will work
              title: Row(
                children: [
                  Image.asset('b2.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("المكتبة"),
                ],
              ),
            ),
          ),
        ),
        tablet: MaterialApp(
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
          ],
          locale: const Locale(
              "ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
          title: 'المكتبة',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar: Stack(fit: StackFit.passthrough, children: [
              Container(
                height: 25,
                color: AppColors.grey,
                child: const Center(
                    child: Text(
                        "جميع الحقوق محفوظة © طلاب جامعة بني سويف التكنولوجية",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              )
            ]),
            body: Row(
              children: const [
                Flexible(
                  flex: 3,
                  child: LibraryDrawer(),
                ),
                Flexible(
                  flex: 6,
                  child: DevicesScreen(),
                )
              ],
            ),
            appBar: AppBar(
              backgroundColor: AppColors.grey, // Will work
              title: Row(
                children: [
                  Image.asset('b2.jpeg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("المكتبة"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = const Color(0xffaa44aa)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(const Offset(200, 200), 100, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
