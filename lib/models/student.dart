import 'package:appwrite/models.dart';

class Student {
  final String name;
  final String englishName;
  final int code;
  final String relegion;
  final String gender;
  final String nationality;
  final String birthDay;
  final String birthPlace;
  final String socialStatus;
  final String idType;
  final int nattionalId;
  final String publishDate;
  final String publishPlace;
  final String fatherName;
  final String motherName;
  final String entryStatus;
  final String acceptanceType;
  final String acceptanceYear;
  final String city;
  final String address;
  final int homeNumber;
  final int phoneNumber;
  final String email;
  final String fax;
  final int buildingNumber;
  final int apartmentNumber;
  final String mailBox;
  final int mailCode;

  final String fatherNationality;
  final String fatherCity;
  final String fatherAddress;
  final String fatherJob;
  final String fatherJobPlace;
  final String degreeOfKinship;
  final int fatherPhoneNumber;
  final String fatherEmail;
  final String fatherFax;
  final String qualification;
  final String place;
  final int graduationYear;
  final int total;
  final String percentage;

  final Preferences prefs;

  Student(
      {required this.name,
      required this.englishName,
      required this.code,
      required this.relegion,
      required this.gender,
      required this.nationality,
      required this.birthDay,
      required this.birthPlace,
      required this.socialStatus,
      required this.idType,
      required this.nattionalId,
      required this.publishDate,
      required this.publishPlace,
      required this.fatherName,
      required this.motherName,
      required this.entryStatus,
      required this.acceptanceType,
      required this.acceptanceYear,
      required this.city,
      required this.address,
      required this.homeNumber,
      required this.phoneNumber,
      required this.email,
      required this.fax,
      required this.buildingNumber,
      required this.apartmentNumber,
      required this.mailBox,
      required this.mailCode,
      required this.fatherNationality,
      required this.fatherCity,
      required this.fatherAddress,
      required this.fatherJob,
      required this.fatherJobPlace,
      required this.degreeOfKinship,
      required this.fatherPhoneNumber,
      required this.fatherEmail,
      required this.fatherFax,
      required this.qualification,
      required this.place,
      required this.graduationYear,
      required this.total,
      required this.percentage,
      required this.prefs});

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map['name'],
      englishName: map['englishName'],
      code: map['code'],
      relegion: map['relegion'],
      gender: map['gender'],
      nationality: map['nationality'],
      birthDay: map['birthDay'],
      birthPlace: map['birthPlace'],
      socialStatus: map['socialStatus'],
      idType: map['idType'],
      nattionalId: map['nattionalId'],
      publishDate: map['publishDate'],
      publishPlace: map['publishPlace'],
      fatherName: map['fatherName'],
      motherName: map['motherName'],
      entryStatus: map['entryStatus'],
      acceptanceType: map['acceptanceType'],
      acceptanceYear: map['acceptanceYear'],
      city: map['city'],
      address: map['address'],
      homeNumber: map['homeNumber'],
      phoneNumber: map['phoneNumber'],
      email: map['email'],
      fax: map['fax'],
      buildingNumber: map['buildingNumber'],
      apartmentNumber: map['apartmentNumber'],
      mailBox: map['mailBox'],
      mailCode: map['mailCode'],
      fatherNationality: map['fatherNationality'],
      fatherCity: map['fatherCity'],
      fatherAddress: map['fatherAddress'],
      fatherJob: map['fatherJob'],
      fatherJobPlace: map['fatherJobPlace'],
      degreeOfKinship: map['degreeOfKinship'],
      fatherPhoneNumber: map['fatherPhoneNumber'],
      fatherEmail: map['fatherEmail'],
      fatherFax: map['fatherFax'],
      qualification: map['qualification'],
      place: map['place'],
      graduationYear: map['graduationYear'],
      total: map['total'],
      percentage: map['percentage'],
      // Here preference is actually a different class model. This is left
      // as an exercise for you to discover. The more you discover, the more
      // interesting it gets
      prefs: Preferences.fromMap(map['prefs']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "englishName": englishName,
      "code": code,
      "relegion": relegion,
      "gender": gender,
      "nationality": nationality,
      "birthDay": birthDay,
      "birthPlace": birthPlace,
      "socialStatus": socialStatus,
      "idType": idType,
      "nattionalId": nattionalId,
      "publishDate": publishDate,
      "publishPlace": publishPlace,
      "fatherName": fatherName,
      "motherName": motherName,
      "entryStatus": entryStatus,
      "acceptanceType": acceptanceType,
      "acceptanceYear": acceptanceYear,
      "city": city,
      "address": address,
      "homeNumber": homeNumber,
      "phoneNumber": phoneNumber,
      "email": email,
      "fax": fax,
      "buildingNumber": buildingNumber,
      "apartmentNumber": apartmentNumber,
      "mailBox": mailBox,
      "mailCode": mailCode,
      "fatherNationality": fatherNationality,
      "fatherCity": fatherCity,
      "fatherAddress": fatherAddress,
      "fatherJob": fatherJob,
      "fatherJobPlace": fatherJobPlace,
      "degreeOfKinship": degreeOfKinship,
      "fatherPhoneNumber": fatherPhoneNumber,
      "fatherEmail": fatherEmail,
      "fatherFax": fatherFax,
      "qualification": qualification,
      "place": place,
      "graduationYear": graduationYear,
      "total": total,
      "percentage": percentage,
      "prefs": prefs.toMap(),
    };
  }
}
