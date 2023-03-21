import 'package:flutter/material.dart';
import 'package:graduation_project/presentation/widgets/widgets/details_tile.dart';

class MasterDetails extends StatelessWidget {
  const MasterDetails({
    super.key,
    this.name = "",
    this.nationality = "",
    this.city = "",
    this.address = "",
    this.job = "",
    this.jobPlace = "",
    this.degreeOfKinship = "",
    this.homeNumber = "",
    this.phoneNumber = "",
    this.email = "",
    this.fax = "",
  });
  final String name;
  final String nationality;
  final String city;
  final String address;
  final String job;
  final String jobPlace;
  final String degreeOfKinship;
  final String homeNumber;
  final String phoneNumber;
  final String email;
  final String fax;
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
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DetailsTile(
              detailName: "الإسم",
              detailValue: name,
            ),
            DetailsTile(
              detailName: "الجنسية",
              detailValue: nationality,
            ),
            DetailsTile(
              detailName: "المدينة",
              detailValue: city,
            ),
            DetailsTile(
              detailName: "العنوان",
              detailValue: address,
            ),
            DetailsTile(
              detailName: "الوظيفة",
              detailValue: job,
            ),
            DetailsTile(
              detailName: "جهة العمل",
              detailValue: jobPlace,
            ),
            DetailsTile(
              detailName: "درجة القرابة",
              detailValue: degreeOfKinship,
            ),
            DetailsTile(
              detailName: "ت المنزل",
              detailValue: homeNumber,
            ),
            DetailsTile(
              detailName: "المحمول",
              detailValue: phoneNumber,
            ),
            DetailsTile(
              detailName: "البريد الإلكتروني",
              detailValue: email,
            ),
            DetailsTile(
              detailName: "فاكس",
              detailValue: fax,
            ),
          ],
        ),
      ),
    );
  }
}
