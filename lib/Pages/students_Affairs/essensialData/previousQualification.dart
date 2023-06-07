// // ignore: file_names
// // ignore_for_file: file_names, duplicate_ignore, avoid_unnecessary_containers, non_constant_identifier_names

// import 'package:btxproject2/consatant/Constant.dart';
// import 'package:btxproject2/Provider/Provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class PreviousQualification extends StatelessWidget {
//   const PreviousQualification({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Color color1 = HexColor('#3E6BA9');
//     return MultiProvider(
//         providers: [
//           ChangeNotifierProvider(
//             create: (context) => StudentDetails(),
//           ),
//         ],
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Row(
//                   children: [
//                     const Expanded(child: Text("المؤهل ")),
//                     Expanded(child: Center(child: Consumer<StudentDetails>(
//                         builder: (context, model, child) {
//                       return Text(model.Qualification,
//                           style: TextStyle(color: color1));
//                     })))
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Row(
//                   children: [
//                     const Expanded(child: Text("الجهة ")),
//                     Expanded(child: Center(child: Consumer<StudentDetails>(
//                         builder: (context, model, child) {
//                       return Text(model.SideQualification,
//                           style: TextStyle(color: color1));
//                     })))
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Row(
//                   children: [
//                     const Expanded(child: Text("سنة التخرج ")),
//                     Expanded(child: Center(child: Consumer<StudentDetails>(
//                         builder: (context, model, child) {
//                       return Text("${model.GraduationYear}",
//                           style: TextStyle(color: color1));
//                     })))
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Row(
//                   children: [
//                     const Expanded(child: Text("المجموع ")),
//                     Expanded(child: Center(child: Consumer<StudentDetails>(
//                         builder: (context, model, child) {
//                       return Text("${model.TotalDegreeGraduation}",
//                           style: TextStyle(color: color1));
//                     })))
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Row(
//                   children: [
//                     const Expanded(child: Text("النسبة ")),
//                     Expanded(child: Center(child: Consumer<StudentDetails>(
//                         builder: (context, model, child) {
//                       return Text("${model.percentage}%",
//                           style: TextStyle(color: color1));
//                     })))
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }

// Container Previous_Scaffold = Container(
//   child: const PreviousQualification(),
// );
