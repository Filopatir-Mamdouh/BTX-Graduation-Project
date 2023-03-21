// import 'dart:io';

// import 'package:bt_x/core/app_colors.dart';
// import 'package:bt_x/core/details_tile.dart';
// import 'package:bt_x/presentation/provider/Taecher_Basic_Data_provider.dart';
// import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import 'package:xfile/xfile.dart';

// class BasicDataScreen extends StatelessWidget {
//   const BasicDataScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final basicDataProvider = Provider.of<BasicDataProvider>(context);
//     XFile? profileImage = basicDataProvider.profileImage as XFile?;
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 20.0,
//             horizontal: 10.0,
//           ),
//           child: Column(
//             children: [
//               Text(
//                 "البيانات الأساسية",
//                 style: TextStyle(
//                   color: Colors.grey[900],
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18.0,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10.0,
//               ),
//               Expanded(
//                 child: Container(
//                   width: double.infinity,
//                   height: double.infinity,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: AppColors.primary,
//                       width: 12.0,
//                     ),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Column(
//                         children: [
//                           Container(
//                             width: 80.0,
//                             height: 80.0,
//                             clipBehavior: Clip.hardEdge,
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: AppColors.grey),
//                                 borderRadius: const BorderRadius.all(
//                                     Radius.circular(15.0))),
//                             child: profileImage != null
//                                 ? Image.file(
//                                     File(
//                                       profileImage.path,
//                                     ),
//                                     fit: BoxFit.fill,
//                                   )
//                                 : const Padding(
//                                     padding: EdgeInsets.all(5.0),
//                                     child: FittedBox(
//                                       child: Icon(
//                                         Icons.person,
//                                       ),
//                                     ),
//                                   ),
//                           ),
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           InkWell(
//                             onTap: () async {
//                               await basicDataProvider.pickImageFromGallery();
//                             },
//                             child: Container(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 15.0),
//                               decoration: BoxDecoration(
//                                   border: Border.all(color: AppColors.grey),
//                                   borderRadius: const BorderRadius.all(
//                                       Radius.circular(15.0))),
//                               child: Text(
//                                 "رفع صورة",
//                                 style: TextStyle(
//                                   fontSize: 16.0,
//                                   color: AppColors.grey,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 15.0,
//                           ),
//                           const DetailsTile(
//                               detailName: "الكود", detailValue: "555555"),
//                           const DetailsTile(
//                               detailName: "الإسم", detailValue: "أحمد محمود"),
//                           const DetailsTile(
//                               detailName: "التليفون",
//                               detailValue: "012345678911"),
//                           const DetailsTile(
//                               detailName: "البريد الإلكتروني",
//                               detailValue: "ahmed@gmail.com"),
//                           const DetailsTile(
//                               detailName: "نوع البطاقة",
//                               detailValue: "بطاقة قومية"),
//                           const DetailsTile(
//                               detailName: "رقم البطاقة",
//                               detailValue: "01234567891234"),
//                           const DetailsTile(
//                             detailName: "العنوان",
//                             detailValue:
//                                 "شارع حمو الطيخا متفرع 15 من المكسيكي شرق بني سويف - بني سويف",
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
