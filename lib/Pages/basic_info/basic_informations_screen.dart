import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/provider/basic_informations_provider.dart';
import 'package:graduation_project/presentation/widgets/widgets/contacts_details.dart';
import 'package:graduation_project/presentation/widgets/widgets/master_details.dart';
import 'package:graduation_project/presentation/widgets/widgets/personal_details.dart';
import 'package:graduation_project/presentation/widgets/widgets/previous_qualification.dart';

import 'package:provider/provider.dart';

class BasicInformationsScreen extends StatelessWidget {
  const BasicInformationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int basicInformationsIndex =
        BasicInformationsProvider().basicInformationsIndex;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BasicInformationsProvider>(
            create: (_) => BasicInformationsProvider())
      ],
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
                              child: MaterialButton(
                                height: 30.0,
                                onPressed: () {
                                  BasicInformationsProvider()
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
                            Expanded(
                              child: MaterialButton(
                                height: 30.0,
                                onPressed: () {
                                  BasicInformationsProvider()
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
                            Expanded(
                              child: MaterialButton(
                                height: 30.0,
                                onPressed: () {
                                  BasicInformationsProvider()
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
                            Expanded(
                              child: MaterialButton(
                                height: 40.0,
                                onPressed: () {
                                  BasicInformationsProvider()
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: basicInformationsIndex == 0
                            ? PersonalDetails(
                                name: "${BasicInformationsProvider().name}",
                                englishName:
                                    "${BasicInformationsProvider().englishName}",
                                code: "${BasicInformationsProvider().code}",
                                religion:
                                    "${BasicInformationsProvider().religion}",
                                gender: "${BasicInformationsProvider().gender}",
                                nationality:
                                    "${BasicInformationsProvider().nationality}",
                                birthDay:
                                    "${BasicInformationsProvider().birthDay}",
                                birthPlace:
                                    "${BasicInformationsProvider().birthPlace}",
                                socialStatus:
                                    "${BasicInformationsProvider().socialStatus}",
                                cardType:
                                    "${BasicInformationsProvider().cardType}",
                                cardNumber:
                                    "${BasicInformationsProvider().cardNumber}",
                                publishDate:
                                    "${BasicInformationsProvider().publishDate}",
                                publishPlace:
                                    "${BasicInformationsProvider().publishPlace}",
                                fatherName:
                                    "${BasicInformationsProvider().fatherName}",
                                motherName:
                                    "${BasicInformationsProvider().motherName}",
                                entryStatus:
                                    "${BasicInformationsProvider().entryStatus}",
                                acceptanceType:
                                    "${BasicInformationsProvider().acceptanceType}",
                                acceptanceYear:
                                    "${BasicInformationsProvider().acceptanceYear}",
                              )
                            : (basicInformationsIndex == 1
                                ? ContactsDetails(
                                    city: "${BasicInformationsProvider().city}",
                                    address:
                                        "${BasicInformationsProvider().address}",
                                    homeNumber:
                                        "${BasicInformationsProvider().homeNumber}",
                                    phoneNumber:
                                        "${BasicInformationsProvider().phoneNumber}",
                                    email:
                                        "${BasicInformationsProvider().email}",
                                    fax: "${BasicInformationsProvider().fax}",
                                    buildingNumber:
                                        "${BasicInformationsProvider().buildingNumber}",
                                    apartmentNumber:
                                        "${BasicInformationsProvider().apartmentNumber}",
                                    mailBox:
                                        "${BasicInformationsProvider().mailBox}",
                                    mailCode:
                                        "${BasicInformationsProvider().mailCode}",
                                  )
                                : (basicInformationsIndex == 2
                                    ? MasterDetails(
                                        name:
                                            "${BasicInformationsProvider().fatherName}",
                                        nationality:
                                            "${BasicInformationsProvider().Father_Nationality}",
                                        city:
                                            "${BasicInformationsProvider().Father_City}",
                                        address:
                                            "${BasicInformationsProvider().Father_Address}",
                                        job:
                                            "${BasicInformationsProvider().Father_Job}",
                                        jobPlace:
                                            "${BasicInformationsProvider().Father_Job_Place}",
                                        degreeOfKinship:
                                            "${BasicInformationsProvider().degreeOfKinship}",
                                        homeNumber:
                                            "${BasicInformationsProvider().homeNumber}",
                                        phoneNumber:
                                            "${BasicInformationsProvider().Father_Phone_Number}",
                                        email:
                                            "${BasicInformationsProvider().father_Email}",
                                        fax:
                                            "${BasicInformationsProvider().father_Fax}",
                                      )
                                    : PreviousQualification(
                                        qualification:
                                            "${BasicInformationsProvider().qualification}",
                                        place:
                                            "${BasicInformationsProvider().place}",
                                        graduationYear:
                                            "${BasicInformationsProvider().graduationYear}",
                                        total:
                                            "${BasicInformationsProvider().total}",
                                        percentage:
                                            "${BasicInformationsProvider().percentage}",
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
