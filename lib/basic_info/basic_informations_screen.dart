import 'package:bt_x/core/app_colors.dart';
import 'package:bt_x/presentation/provider/basic_informations_provider.dart';
import 'package:bt_x/presentation/widgets/widgets/contacts_details.dart';
import 'package:bt_x/presentation/widgets/widgets/master_details.dart';
import 'package:bt_x/presentation/widgets/widgets/personal_details.dart';
import 'package:bt_x/presentation/widgets/widgets/previous_qualification.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class BasicInformationsScreen extends StatelessWidget {
  const BasicInformationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final basicInformationsProvider =
        Provider.of<BasicInformationsProvider>(context);
    int basicInformationsIndex =
        basicInformationsProvider.basicInformationsIndex;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: double.infinity,
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
                height: 20.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                        ),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: MaterialButton(
                                  height: 30.0,
                                  onPressed: () {
                                    basicInformationsProvider
                                        .changeBasicInformationsIndex(index: 0);
                                  },
                                  color: basicInformationsIndex == 0
                                      ? Colors.white
                                      : AppColors.primary,
                                  child: Text(
                                    "الشخصية",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: basicInformationsIndex == 0
                                          ? AppColors.primary
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                child: MaterialButton(
                                  height: 30.0,
                                  onPressed: () {
                                    basicInformationsProvider
                                        .changeBasicInformationsIndex(index: 1);
                                  },
                                  color: basicInformationsIndex == 1
                                      ? Colors.white
                                      : AppColors.primary,
                                  child: Text(
                                    "الإتصال",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: basicInformationsIndex == 1
                                          ? AppColors.primary
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                child: MaterialButton(
                                  height: 30.0,
                                  onPressed: () {
                                    basicInformationsProvider
                                        .changeBasicInformationsIndex(index: 2);
                                  },
                                  color: basicInformationsIndex == 2
                                      ? Colors.white
                                      : AppColors.primary,
                                  child: Text(
                                    "ولي الأمر",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: basicInformationsIndex == 2
                                          ? AppColors.primary
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: FittedBox(
                                child: MaterialButton(
                                  height: 40.0,
                                  onPressed: () {
                                    basicInformationsProvider
                                        .changeBasicInformationsIndex(index: 3);
                                  },
                                  color: basicInformationsIndex == 3
                                      ? Colors.white
                                      : AppColors.primary,
                                  child: Text(
                                    "المؤهل السابق",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: basicInformationsIndex == 3
                                          ? AppColors.primary
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: basicInformationsIndex == 0
                            ? const PersonalDetails(
                                name: "أحمد محمود",
                                englishName: "Ahmed Mahmoud",
                                code: "365",
                                religion: "مسلم",
                                gender: "ذكر",
                                nationality: "مصري",
                                birthDay: "19/05/2001",
                                birthPlace: "بنها",
                                socialStatus: "أعزب",
                                cardType: "بطاقة قومية",
                                cardNumber: "12345678910112",
                                publishDate: "",
                                publishPlace: "بنها",
                                fatherName: "محمود حسن",
                                motherName: "",
                                entryStatus: "مستجد تقدير",
                                acceptanceType: "محول",
                                acceptanceYear: "2021-2020",
                              )
                            : (basicInformationsIndex == 1
                                ? const ContactsDetails(
                                    city: "بنها",
                                    address: "بنها",
                                    homeNumber: "",
                                    phoneNumber: "01203491221",
                                    email: "",
                                    fax: "",
                                    buildingNumber: "",
                                    apartmentNumber: "",
                                    mailBox: "",
                                    mailCode: "",
                                  )
                                : (basicInformationsIndex == 2
                                    ? const MasterDetails(
                                        name: "محمود حسن",
                                        nationality: "مصري",
                                        city: "بنها",
                                        address: "بنها",
                                        job: "",
                                        jobPlace: "",
                                        degreeOfKinship: "أب",
                                        homeNumber: "",
                                        phoneNumber: "",
                                        email: "",
                                        fax: "",
                                      )
                                    : const PreviousQualification(
                                        qualification: "ثانوي عام رياضة",
                                        place: "مدرسة محرم بك الرسمية لغات",
                                        graduationYear: "2019",
                                        total: "450",
                                        percentage: "100%",
                                      ))),
                      ),
                    ],
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


/*
PreviousQualification(
                          qualification: "ثانوي عام رياضة",
                          place: "مدرسة محرم بك الرسمية لغات",
                          graduationYear: "2019",
                          total: "450",
                          percentage: "100%",
                        )
                         */

                        /*
                        PersonalDetails(
                          name: "أحمد محمود",
                          englishName: "Ahmed Mahmoud",
                          code: "365",
                          religion: "مسلم",
                          gender: "ذكر",
                          nationality: "مصري",
                          birthDay: "19/05/2001",
                          birthPlace: "بنها",
                          socialStatus: "أعزب",
                          cardType: "بطاقة قومية",
                          cardNumber: "12345678910112",
                          publishDate: "",
                          publishPlace: "بنها",
                          fatherName: "محمود حسن",
                          motherName: "",
                          entryStatus: "مستجد تقدير",
                          acceptanceType: "محول",
                          acceptanceYear: "2021-2020",
                        )
                         */

                        /*
                        ContactsDetails(
                          city: "بنها",
                          address: "بنها",
                          homeNumber: "",
                          phoneNumber: "01203491221",
                          email: "",
                          fax: "",
                          buildingNumber: "",
                          apartmentNumber: "",
                          mailBox: "",
                          mailCode: "",
                        )
                        
                         */