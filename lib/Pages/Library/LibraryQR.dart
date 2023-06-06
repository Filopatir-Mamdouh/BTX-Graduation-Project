// // ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers


// import 'package:flutter/material.dart';
// import 'package:graduation_project/provider/Provider.dart';
// import 'package:provider/provider.dart';


// class QR_Library extends StatelessWidget {
//   const QR_Library({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => Library_QR(),
//         )
//       ],
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 child: Consumer<Library_QR>(builder: (context, model, child) {
//                   return QrImage(
//                     data: model.data.toString(),
//                     version: QrVersions.auto,
//                     size: 200.0,
//                   );
//                   // return BarcodeWidget(
//                   //   data: model.data.toString(),
//                   //   barcode: Barcode.qrCode(),
//                   // );
//                 }),
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               Row(
//                 children: [
//                   Consumer<Library_QR>(builder: (context, model, child) {
//                     return Text("الإسم : ${model.Name}");
//                   })
//                 ],
//               ),
//               Row(
//                 children: [
//                   Consumer<Library_QR>(builder: (context, model, child) {
//                     return Text("الفرقة : ${model.Team}");
//                   })
//                 ],
//               ),
//               Row(
//                 children: [
//                   Consumer<Library_QR>(builder: (context, model, child) {
//                     return Text("القسم : ${model.Section}");
//                   })
//                 ],
//               ),
//               Row(
//                 children: [
//                   Consumer<Library_QR>(builder: (context, model, child) {
//                     return Text("التاريخ : ${model.Date_Today}");
//                   })
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
