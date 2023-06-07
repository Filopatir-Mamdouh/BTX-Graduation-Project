import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/chat/constants/constants.dart';
import 'package:graduation_project/provider/Affairs_side_Menue_provider.dart';

class AffairsBodyClass extends StatelessWidget {
  const AffairsBodyClass({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width >= 650;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "مرحبا بك",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Text(
                    Affairs_Side_Menue_provider().Student_Name,
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: Text(
                  "البيانات الدراسية",
                  style: TextStyle(color: grey_text, fontSize: 17),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: Text(
                  'شئون الطلاب',
                  style: TextStyle(color: grey_text, fontSize: 19),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: Text(
                  'رعاية الطلاب',
                  style: TextStyle(color: grey_text, fontSize: 19),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => booksresponsive()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: Text(
                  'المكتبة',
                  style: TextStyle(color: grey_text, fontSize: 19),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "شكاوي واقتراحات",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "مقابلة العميد",
                    style: TextStyle(color: grey_text, fontSize: 20),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
