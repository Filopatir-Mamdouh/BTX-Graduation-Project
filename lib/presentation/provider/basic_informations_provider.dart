import 'package:flutter/material.dart';

class BasicInformationsProvider with ChangeNotifier {
  String name = "احمد خالد";
  String englishName = "ahmed khaled";
  int code = 12344566;
  String religion = "مسلم";
  String gender = "ذكرر";
  String nationality = "مصري";
  String birthDay = "19/05/2001";
  String birthPlace = "بني سويف";
  String socialStatus = "بطاقة قومية";
  String cardType = "";
  var cardNumber = 12434325435677;
  String publishDate = "";
  String publishPlace = "بني سويف";
  String fatherName = "خالد حسن";
  String motherName = "";
  String entryStatus = "مستجد تقدير";
  String acceptanceType = "محول";
  String acceptanceYear = "2021-2020";
  String city = "بني سويف";
  String address = "شرق النيل";
  int homeNumber = 01212435667;
  int phoneNumber = 463345567890;
  String email = "ahmed@gmail.com";
  String fax = "";
  int buildingNumber = 121345678;
  int apartmentNumber = 3245;
  String mailBox = "";
  int mailCode = 2355465;

  String Father_Nationality = "مصري";
  String Father_City = "بني سويف";
  String Father_Address = "بني سويف";
  String Father_Job = "مهندس";
  String Father_Job_Place = "بني سويف";
  String degreeOfKinship = "اب";
  int Father_Phone_Number = 325467890999;
  String father_Email = "khaled@gamil.com";
  String father_Fax = "";
  String qualification = "";
  String place = "";
  int graduationYear = 2019;
  int total = 234;
  String percentage = "20%";

  int basicInformationsIndex = 0;
  void changeBasicInformationsIndex({required int index}) {
    basicInformationsIndex = index;
    notifyListeners();
  }
}
