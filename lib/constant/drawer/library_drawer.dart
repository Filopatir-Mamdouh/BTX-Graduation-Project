import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../Provider/backend/apiprovider.dart';

class LibraryDrawer extends ConsumerWidget {
  const LibraryDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    final studentModel = ref.watch(studentProvider);
    Color greyText = const Color(0xFF707070);
    return studentModel.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (context) => SingleChildScrollView(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Image.asset('assets/profile.png')),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Consumer(builder: (context, ref, child) {
                        return Text(
                            studentModel.value?.name.split(' ')[0] ?? '',
                            style: TextStyle(
                              color: greyText,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ));
                      }),
                      Consumer(builder: (context, ref, child) {
                        int? n = studentModel.value?.name.indexOf(' ');
                        return Text(
                            studentModel.value?.name.substring(n! + 1) ?? '',
                            style: TextStyle(
                                color: greyText,
                                fontSize: 18,
                                fontWeight: FontWeight.bold));
                      }),
                      Consumer(builder: (context, ref, child) {
                        return Text(studentModel.value?.year ?? '',
                            style: TextStyle(
                                color: greyText,
                                fontSize: 18,
                                fontWeight: FontWeight.bold));
                      }),
                      Consumer(builder: (context, model, child) {
                        return Text(
                            studentModel.value?.depart ??
                                studentModel.value?.program ??
                                '',
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
