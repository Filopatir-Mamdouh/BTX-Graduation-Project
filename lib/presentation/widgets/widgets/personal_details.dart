import 'package:bt_x/presentation/widgets/widgets/details_tile.dart';
import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    super.key,
    this.name = "",
    this.englishName = "",
    this.code = "",
    this.religion = "",
    this.gender = "",
    this.nationality = "",
    this.birthDay = "",
    this.birthPlace = "",
    this.socialStatus = "",
    this.cardType = "",
    this.cardNumber = "",
    this.publishDate = "",
    this.publishPlace = "",
    this.fatherName = "",
    this.motherName = "",
    this.entryStatus = "",
    this.acceptanceType = "",
    this.acceptanceYear = "",
  });
  final String name;
  final String englishName;
  final String code;
  final String religion;
  final String gender;
  final String nationality;
  final String birthDay;
  final String birthPlace;
  final String socialStatus;
  final String cardType;
  final String cardNumber;
  final String publishDate;
  final String publishPlace;
  final String fatherName;
  final String motherName;
  final String entryStatus;
  final String acceptanceType;
  final String acceptanceYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10.0,
        left: 10.0,
        bottom: 10.0,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DetailsTile(
              detailName: "الإسم",
              detailValue: name,
            ),
            DetailsTile(
              detailName: "الإسم-إنجليزي",
              detailValue: englishName,
            ),
            DetailsTile(
              detailName: "الكود",
              detailValue: code,
            ),
            DetailsTile(
              detailName: "الديانة",
              detailValue: religion,
            ),
            DetailsTile(
              detailName: "النوع",
              detailValue: gender,
            ),
            DetailsTile(
              detailName: "الجنسية",
              detailValue: nationality,
            ),
            DetailsTile(
              detailName: "تاريخ الميلاد",
              detailValue: birthDay,
            ),
            DetailsTile(
              detailName: "محل الميلاد",
              detailValue: birthPlace,
            ),
            DetailsTile(
              detailName: "الحالة الإجتماعية",
              detailValue: socialStatus,
            ),
            DetailsTile(
              detailName: "نوع البطاقة",
              detailValue: cardType,
            ),
            DetailsTile(
              detailName: "رقم البطاقة",
              detailValue: cardNumber,
            ),
            DetailsTile(
              detailName: "تاريخ الصدور",
              detailValue: publishDate,
            ),
            DetailsTile(
              detailName: "مكان الصدور",
              detailValue: publishPlace,
            ),
            DetailsTile(
              detailName: "اسم الأب",
              detailValue: fatherName,
            ),
            DetailsTile(
              detailName: "اسم الأم",
              detailValue: motherName,
            ),
            DetailsTile(
              detailName: "حالة القيد",
              detailValue: entryStatus,
            ),
            DetailsTile(
              detailName: "نوع القبول",
              detailValue: acceptanceType,
            ),
            DetailsTile(
              detailName: "عام القبول",
              detailValue: acceptanceYear,
            ),
          ],
        ),
      ),
    );
  }
}
