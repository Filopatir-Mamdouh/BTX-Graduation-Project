import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/provider/Taecher_Basic_Data_provider.dart';
import 'package:graduation_project/presentation/widgets/widgets/details_tile.dart';
import 'package:image_picker/image_picker.dart';

import 'package:provider/provider.dart';

class BasicDataScreen extends StatelessWidget {
  const BasicDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    XFile? profileImage = BasicDataProvider().profileImage;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BasicDataProvider>(
          create: (_) => BasicDataProvider(),
        ),
      ],
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              Text(
                "البيانات الأساسية",
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primary,
                      width: 12.0,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.grey),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0))),
                            child: profileImage != null
                                ? Image.file(
                                    File(
                                      profileImage.path,
                                    ),
                                    fit: BoxFit.fill,
                                  )
                                : const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: FittedBox(
                                      child: Icon(
                                        Icons.person,
                                      ),
                                    ),
                                  ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          InkWell(
                            onTap: () async {
                              await BasicDataProvider().pickImageFromGallery();
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.grey),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0))),
                              child: Text(
                                "رفع صورة",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: AppColors.grey,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          DetailsTile(
                              detailName: "الكود",
                              detailValue: "${BasicDataProvider().code}"),
                          DetailsTile(
                              detailName: "الإسم",
                              detailValue: "${BasicDataProvider().name}"),
                          DetailsTile(
                              detailName: "التليفون",
                              detailValue:
                                  "${BasicDataProvider().phone_number}"),
                          DetailsTile(
                              detailName: "البريد الإلكتروني",
                              detailValue:
                                  "${BasicDataProvider().phone_number}"),
                          DetailsTile(
                              detailName: "نوع البطاقة",
                              detailValue: "${BasicDataProvider().ID_Type}"),
                          DetailsTile(
                              detailName: "رقم البطاقة",
                              detailValue: "${BasicDataProvider().ID_Number}"),
                          DetailsTile(
                            detailName: "العنوان",
                            detailValue: "${BasicDataProvider().Address}",
                            maxLines: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
