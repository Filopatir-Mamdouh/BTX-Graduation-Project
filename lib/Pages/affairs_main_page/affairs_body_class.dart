import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Pages/chat/constants/constants.dart';
import '../../Provider/backend/apiprovider.dart';
import '../inquiries/inquiries_responsive.dart';
import '../library/main_screen_library_home.dart';

class AffairsBodyClass extends ConsumerWidget {
  const AffairsBodyClass({super.key});

  @override
  Widget build(BuildContext context, ref) {
    void onPressed(Widget page) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => page));
    }

    final student = ref.watch(studentProvider);
    MediaQuery.of(context).size.width >= 650;
    return student.when(
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err \n $stack'),
        data: (context) => Scaffold(
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Column(children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            student.value?.name ?? '',
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
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 18),
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
                        onPressed: () {
                          onPressed(inquiries_responsive());
                        }, //inquiries_responsive
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.black),
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 17),
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
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 17),
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
                          onPressed(
                            const MainScreenLibraryHome(),
                          );
                        }, //MainScreenLibraryHome
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.black),
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 17),
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
            ));
  }
}
