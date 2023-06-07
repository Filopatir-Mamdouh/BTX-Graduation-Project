import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EssentialData extends StatelessWidget {
  final Color color1 = HexColor('#3E6BA9');

  EssentialData({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ScaffoldEssensialData(),
        ),
      ],
      child: SafeArea(
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
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    textColor: model.personality == true
                                        ? color1
                                        : Colors.white,
                                    color: model.personality == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.personalityscaffold();
                                    },
                                    child: Text(
                                      "الشخصية",
                                      style: TextStyle(
                                          fontSize:
                                              size.width <= 410 ? 10 : 15),
                                    ),
                                  );
                                }),
                              ),
                              Expanded(
                                flex: 8,
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    textColor: model.communication == true
                                        ? color1
                                        : Colors.white,
                                    color: model.communication == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.communicatescaffold();
                                    },
                                    child: Text(
                                      "الأتصال",
                                      style: TextStyle(
                                          fontSize:
                                              size.width <= 410 ? 10 : 15),
                                    ),
                                  );
                                }),
                              ),
                              Expanded(
                                flex: 8,
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    textColor: model.parents == true
                                        ? color1
                                        : Colors.white,
                                    color: model.parents == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.parentsscaffold();
                                    },
                                    child: Text(
                                      "ولي الأمر",
                                      style: TextStyle(
                                          fontSize:
                                              size.width <= 410 ? 10 : 15),
                                    ),
                                  );
                                }),
                              ),
                              Expanded(
                                flex: 11,
                                child: Consumer<ScaffoldEssensialData>(
                                    builder: (context, model, child) {
                                  return MaterialButton(
                                    textColor:
                                        model.previousQualification == true
                                            ? color1
                                            : Colors.white,
                                    color: model.previousQualification == true
                                        ? Colors.white
                                        : color1,
                                    onPressed: () {
                                      model.previousscaffold();
                                    },
                                    child: Text(
                                      "المؤهل السابق",
                                      style: TextStyle(
                                          fontSize:
                                              size.width <= 410 ? 10 : 15),
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
                            child: Consumer<ScaffoldEssensialData>(
                                builder: (context, model, child) {
                              return model.scaffold;
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
      )),
    );
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


