// // ignore_for_file: must_be_immutable, file_names

// import 'package:btxproject2/consatant/Constant.dart';
// import 'package:btxproject2/Provider/Provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// // ignore: camel_case_types
// class essentialData extends StatelessWidget {
//   final Color color1 = HexColor('#3E6BA9');

//   essentialData({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => ScaffoldEssensialData(),
//         ),
//       ],
//       child: SafeArea(
//           child: Scaffold(
//         //drawer here

//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 600,
//                       color: Colors.white,
//                       child: Column(children: [
//                         const Padding(
//                           padding: EdgeInsets.all(3.0),
//                           child: Text("البيانات الأساسية"),
//                         ),
//                         const SizedBox(
//                           height: 3,
//                         ),
//                         Container(
//                           color: color1,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                 flex: 8,
//                                 child: Consumer<ScaffoldEssensialData>(
//                                     builder: (context, model, child) {
//                                   return MaterialButton(
//                                     textColor: model.Personality == true
//                                         ? color1
//                                         : Colors.white,
//                                     color: model.Personality == true
//                                         ? Colors.white
//                                         : color1,
//                                     onPressed: () {
//                                       model.PersonalityScaffold();
//                                     },
//                                     child: Text(
//                                       "الشخصية",
//                                       style: TextStyle(
//                                           fontSize:
//                                               size.width <= 410 ? 10 : 15),
//                                     ),
//                                   );
//                                 }),
//                               ),
//                               Expanded(
//                                 flex: 8,
//                                 child: Consumer<ScaffoldEssensialData>(
//                                     builder: (context, model, child) {
//                                   return MaterialButton(
//                                     textColor: model.Communication == true
//                                         ? color1
//                                         : Colors.white,
//                                     color: model.Communication == true
//                                         ? Colors.white
//                                         : color1,
//                                     onPressed: () {
//                                       model.CommunicateScaffold();
//                                     },
//                                     child: Text(
//                                       "الأتصال",
//                                       style: TextStyle(
//                                           fontSize:
//                                               size.width <= 410 ? 10 : 15),
//                                     ),
//                                   );
//                                 }),
//                               ),
//                               Expanded(
//                                 flex: 8,
//                                 child: Consumer<ScaffoldEssensialData>(
//                                     builder: (context, model, child) {
//                                   return MaterialButton(
//                                     textColor: model.Parents == true
//                                         ? color1
//                                         : Colors.white,
//                                     color: model.Parents == true
//                                         ? Colors.white
//                                         : color1,
//                                     onPressed: () {
//                                       model.ParentsScaffold();
//                                     },
//                                     child: Text(
//                                       "ولي الأمر",
//                                       style: TextStyle(
//                                           fontSize:
//                                               size.width <= 410 ? 10 : 15),
//                                     ),
//                                   );
//                                 }),
//                               ),
//                               Expanded(
//                                 flex: 11,
//                                 child: Consumer<ScaffoldEssensialData>(
//                                     builder: (context, model, child) {
//                                   return MaterialButton(
//                                     textColor:
//                                         model.PreviousQualification == true
//                                             ? color1
//                                             : Colors.white,
//                                     color: model.PreviousQualification == true
//                                         ? Colors.white
//                                         : color1,
//                                     onPressed: () {
//                                       model.PreviousScaffold();
//                                     },
//                                     child: Text(
//                                       "المؤهل السابق",
//                                       style: TextStyle(
//                                           fontSize:
//                                               size.width <= 410 ? 10 : 15),
//                                     ),
//                                   );
//                                 }),
//                               )
//                             ],
//                           ),
//                         ),
//                         SafeArea(
//                           child: Container(
//                             width: 600,
//                             height: 600,
//                             padding: const EdgeInsets.all(40),
//                             decoration: BoxDecoration(
//                                 border: Border.all(width: 3, color: color1)),
//                             child: Consumer<ScaffoldEssensialData>(
//                                 builder: (context, model, child) {
//                               return model.Scaffold;
//                             }),
//                           ),
//                         ),
//                       ]),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       )),
//     );
//   }
// }

// // bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.arrow_left), label: 'السابق'),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.school),
// //             label: 'البيانات التعليمية',
// //             backgroundColor: Colors.purple,
// //           ),
// //           BottomNavigationBarItem(
// //               icon: Icon(Icons.arrow_right), label: 'التالي'),
// //         ],
// //       ),


