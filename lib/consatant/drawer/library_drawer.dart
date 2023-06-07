import 'package:btxproject2/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LibraryDrawer extends StatelessWidget {
  const LibraryDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color greyText = const Color(0xFF707070);
    return SingleChildScrollView(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StudentDetails(),
          )
        ],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: greyText),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Consumer<StudentDetails>(
                        builder: (context, model, child) {
                      return Image.asset(model.studentImgPath);
                    }),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.studentName,
                            style: TextStyle(
                              color: greyText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ));
                      }),
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.fatherName,
                            style: TextStyle(
                                color: greyText,
                                fontSize: 18,
                                fontWeight: FontWeight.bold));
                      }),
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.studentTeam,
                            style: TextStyle(
                                color: greyText,
                                fontSize: 18,
                                fontWeight: FontWeight.bold));
                      }),
                      Consumer<StudentDetails>(
                          builder: (context, model, child) {
                        return Text(model.section,
                            style: TextStyle(
                                color: greyText,
                                fontSize: 18,
                                fontWeight: FontWeight.bold));
                      }),
                      const Divider()
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(170, 53),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // <-- Radius
                    ),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black87, width: 3),
                    textStyle: const TextStyle(
                        fontSize: 25, fontStyle: FontStyle.normal)),
                child: const Text(
                  "الكتب الحالية",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                )),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(170, 53),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // <-- Radius
                    ),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black87, width: 3),
                    textStyle: const TextStyle(
                        fontSize: 25, fontStyle: FontStyle.normal)),
                child: const Text(
                  "الأجهزة المتاحة",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                )),
            const SizedBox(
              height: 13,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(170, 53),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // <-- Radius
                    ),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black87, width: 3),
                    textStyle: const TextStyle(
                        fontSize: 25, fontStyle: FontStyle.normal)),
                child: const Text(
                  "تسجيل الخروج",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                )),
          ],
        ),
      ),
    );
  }
}
