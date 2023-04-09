import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/details_tile.dart';

class ContactsDetails extends StatelessWidget {
  const ContactsDetails({
    super.key,
    this.city = "",
    this.address = "",
    this.homeNumber = "",
    this.phoneNumber = "",
    this.email = "",
    this.fax = "",
    this.buildingNumber = "",
    this.apartmentNumber = "",
    this.mailBox = "",
    this.mailCode = "",
  });
  final String city;
  final String address;
  final String homeNumber;
  final String phoneNumber;
  final String email;
  final String fax;
  final String buildingNumber;
  final String apartmentNumber;
  final String mailBox;
  final String mailCode;
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
              detailName: "المدينة",
              detailValue: city,
            ),
            DetailsTile(
              detailName: "العنوان",
              detailValue: address,
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
            DetailsTile(
              detailName: "رقم العقار",
              detailValue: buildingNumber,
            ),
            DetailsTile(
              detailName: "رقم الشقة",
              detailValue: apartmentNumber,
            ),
            DetailsTile(
              detailName: "صندوق البريد",
              detailValue: mailBox,
            ),
            DetailsTile(
              detailName: "الكود البريدي",
              detailValue: mailCode,
            ),
          ],
        ),
      ),
    );
  }
}
