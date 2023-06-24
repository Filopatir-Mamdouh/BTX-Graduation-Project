import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:flutter/material.dart';
import '../../../Provider/provider.dart';

class EssentialData extends ConsumerWidget {
  final Color color1 = HexColor('#3E6BA9');

  EssentialData({super.key});

  @override
  Widget build(BuildContext context, ref) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      //drawer here

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Container(
                    width: 600,
                    color: Colors.white,
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text("البيانات الأساسية"),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        color: color1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 8,
                              child: Consumer(builder: (context, ref, child) {
                                return MaterialButton(
                                  textColor: ref
                                              .watch(essentialProvider)
                                              .personality ==
                                          true
                                      ? color1
                                      : Colors.white,
                                  color: ref
                                              .watch(essentialProvider)
                                              .personality ==
                                          true
                                      ? Colors.white
                                      : color1,
                                  onPressed: () {
                                    ref
                                        .read(essentialProvider)
                                        .personalityscaffold();
                                  },
                                  child: Text(
                                    "الشخصية",
                                    style: TextStyle(
                                        fontSize: size.width <= 410 ? 10 : 15),
                                  ),
                                );
                              }),
                            ),
                            Expanded(
                              flex: 8,
                              child: Consumer(builder: (context, ref, child) {
                                return MaterialButton(
                                  textColor: ref
                                              .watch(essentialProvider)
                                              .communication ==
                                          true
                                      ? color1
                                      : Colors.white,
                                  color: ref
                                              .watch(essentialProvider)
                                              .communication ==
                                          true
                                      ? Colors.white
                                      : color1,
                                  onPressed: () {
                                    ref
                                        .read(essentialProvider)
                                        .communicatescaffold();
                                  },
                                  child: Text(
                                    "الأتصال",
                                    style: TextStyle(
                                        fontSize: size.width <= 410 ? 10 : 15),
                                  ),
                                );
                              }),
                            ),
                            Expanded(
                              flex: 8,
                              child: Consumer(builder: (context, ref, child) {
                                return MaterialButton(
                                  textColor:
                                      ref.watch(essentialProvider).parents ==
                                              true
                                          ? color1
                                          : Colors.white,
                                  color: ref.watch(essentialProvider).parents ==
                                          true
                                      ? Colors.white
                                      : color1,
                                  onPressed: () {
                                    ref
                                        .read(essentialProvider)
                                        .parentsscaffold();
                                  },
                                  child: Text(
                                    "ولي الأمر",
                                    style: TextStyle(
                                        fontSize: size.width <= 410 ? 10 : 15),
                                  ),
                                );
                              }),
                            ),
                            Expanded(
                              flex: 11,
                              child: Consumer(builder: (context, ref, child) {
                                return MaterialButton(
                                  textColor: ref
                                              .watch(essentialProvider)
                                              .previousQualification ==
                                          true
                                      ? color1
                                      : Colors.white,
                                  color: ref
                                              .watch(essentialProvider)
                                              .previousQualification ==
                                          true
                                      ? Colors.white
                                      : color1,
                                  onPressed: () {
                                    ref
                                        .read(essentialProvider)
                                        .previousscaffold();
                                  },
                                  child: Text(
                                    "المؤهل السابق",
                                    style: TextStyle(
                                        fontSize: size.width <= 410 ? 10 : 15),
                                  ),
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                      SafeArea(
                        child: Container(
                          width: 600,
                          height: 600,
                          padding: const EdgeInsets.all(40),
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: color1)),
                          child: Consumer(builder: (context, ref, child) {
                            return ref.watch(essentialProvider).scaffold;
                          }),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

// bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_left), label: 'السابق'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'البيانات التعليمية',
//             backgroundColor: Colors.purple,
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.arrow_right), label: 'التالي'),
//         ],
//       ),


