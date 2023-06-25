// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:appwrite/models.dart';

class Student {
  final String name;
  final String englishName;
  final int? code;
  final String relegion;
  final String gender;
  final String nationality;
  final String birthDate;
  final String birthPlace;
  final String socialStatus;
  final String idType;
  final int? nationalId;
  final String publishDate;
  final String publishPlace;
  final String fatherName;
  final String motherName;
  final String entryStatus;
  final String acceptanceType;
  final int? acceptanceYear;
  final String city;
  final String address;
  final int? homeNumber;
  final int? phoneNumber;
  final String email;
  final String fax;
  final int? buildingNumber;
  final int? apartmentNumber;
  final String mailBox;
  final int? mailCode;
  final String fatherNationality;
  final String fatherCity;
  final String fatherAddress;
  final String fatherJob;
  final String fatherJobPlace;
  final String degreeOfKinship;
  final int? fatherPhoneNumber;
  final String fatherEmail;
  final String fatherFax;
  final String qualification;
  final String place;
  final int? graduationYear;
  final int? total;
  final String percentage;
  final String faculty;
  final String depart;
  final String program;
  final String year;
  final int? studentId;

  final Preferences? prefs;

  Student(
      this.name,
      this.englishName,
      this.code,
      this.relegion,
      this.gender,
      this.nationality,
      this.birthDate,
      this.birthPlace,
      this.socialStatus,
      this.idType,
      this.nationalId,
      this.publishDate,
      this.publishPlace,
      this.fatherName,
      this.motherName,
      this.entryStatus,
      this.acceptanceType,
      this.acceptanceYear,
      this.city,
      this.address,
      this.homeNumber,
      this.phoneNumber,
      this.email,
      this.fax,
      this.buildingNumber,
      this.apartmentNumber,
      this.mailBox,
      this.mailCode,
      this.fatherNationality,
      this.fatherCity,
      this.fatherAddress,
      this.fatherJob,
      this.fatherJobPlace,
      this.degreeOfKinship,
      this.fatherPhoneNumber,
      this.fatherEmail,
      this.fatherFax,
      this.qualification,
      this.place,
      this.graduationYear,
      this.total,
      this.percentage,
      this.faculty,
      this.depart,
      this.program,
      this.year,
      this.studentId,
      this.prefs);

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      map['name'] as String,
      map['englishName'] as String,
      map['code'] as int,
      map['relegion'] as String,
      map['gender'] as String,
      map['nationality'] as String,
      map['birthDate'] as String,
      map['birthPlace'] as String,
      map['socialStatus'] as String,
      map['idType'] as String,
      map['nationalId'] as int?,
      map['publishDate'] as String,
      map['publishPlace'] as String,
      map['fatherName'] as String,
      map['motherName'] as String,
      map['entryStatus'] as String,
      map['acceptanceType'] as String,
      map['acceptanceYear'] as int?,
      map['city'] as String,
      map['address'] as String,
      map['homeNumber'] as int?,
      map['phoneNumber'] as int?,
      map['email'] as String,
      map['fax'] as String,
      map['buildingNumber'] as int?,
      map['apartmentNumber'] as int?,
      map['mailBox'] as String,
      map['mailCode'] as int?,
      map['fatherNationality'] as String,
      map['fatherCity'] as String,
      map['fatherAddress'] as String,
      map['fatherJob'] as String,
      map['fatherJobPlace'] as String,
      map['degreeOfKinship'] as String,
      map['fatherPhoneNumber'] as int?,
      map['fatherEmail'] as String,
      map['fatherFax'] as String,
      map['qualification'] as String,
      map['place'] as String,
      map['graduationYear'] as int?,
      map['total'] as int?,
      map['percentage'] as String,
      map['faculty'] as String,
      map['depart'] as String,
      map['program'] as String,
      map['year'] as String,
      map['studentId'] as int?,
      map['prefs'] as Preferences?,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'englishName': englishName,
      'code': code!,
      'relegion': relegion,
      'gender': gender,
      'nationality': nationality,
      'birthDate': birthDate,
      'birthPlace': birthPlace,
      'socialStatus': socialStatus,
      'idType': idType,
      'nationalId': nationalId!,
      'publishDate': publishDate,
      'publishPlace': publishPlace,
      'fatherName': fatherName,
      'motherName': motherName,
      'entryStatus': entryStatus,
      'acceptanceType': acceptanceType,
      'acceptanceYear': acceptanceYear!,
      'city': city,
      'address': address,
      'homeNumber': homeNumber!,
      'phoneNumber': phoneNumber!,
      'email': email,
      'fax': fax,
      'buildingNumber': buildingNumber!,
      'apartmentNumber': apartmentNumber!,
      'mailBox': mailBox,
      'mailCode': mailCode!,
      'fatherNationality': fatherNationality,
      'fatherCity': fatherCity,
      'fatherAddress': fatherAddress,
      'fatherJob': fatherJob,
      'fatherJobPlace': fatherJobPlace,
      'degreeOfKinship': degreeOfKinship,
      'fatherPhoneNumber': fatherPhoneNumber!,
      'fatherEmail': fatherEmail,
      'fatherFax': fatherFax,
      'qualification': qualification,
      'place': place,
      'graduationYear': graduationYear!,
      'total': total!,
      'percentage': percentage,
      'faculty': faculty,
      'depart': depart,
      'program': program,
      'year': year,
      'studentId': studentId!,
      'prefs': prefs!.toMap(),
    };
  }

  Student copyWith({
    String? name,
    String? englishName,
    int? code,
    String? relegion,
    String? gender,
    String? nationality,
    String? birthDate,
    String? birthPlace,
    String? socialStatus,
    String? idType,
    int? nationalId,
    String? publishDate,
    String? publishPlace,
    String? fatherName,
    String? motherName,
    String? entryStatus,
    String? acceptanceType,
    int? acceptanceYear,
    String? city,
    String? address,
    int? homeNumber,
    int? phoneNumber,
    String? email,
    String? fax,
    int? buildingNumber,
    int? apartmentNumber,
    String? mailBox,
    int? mailCode,
    String? fatherNationality,
    String? fatherCity,
    String? fatherAddress,
    String? fatherJob,
    String? fatherJobPlace,
    String? degreeOfKinship,
    int? fatherPhoneNumber,
    String? fatherEmail,
    String? fatherFax,
    String? qualification,
    String? place,
    int? graduationYear,
    int? total,
    String? percentage,
    String? faculty,
    String? depart,
    String? program,
    String? year,
    int? studentId,
    Preferences? prefs,
  }) {
    return Student(
      name ?? this.name,
      englishName ?? this.englishName,
      code ?? this.code!,
      relegion ?? this.relegion,
      gender ?? this.gender,
      nationality ?? this.nationality,
      birthDate ?? this.birthDate,
      birthPlace ?? this.birthPlace,
      socialStatus ?? this.socialStatus,
      idType ?? this.idType,
      nationalId ?? this.nationalId!,
      publishDate ?? this.publishDate,
      publishPlace ?? this.publishPlace,
      fatherName ?? this.fatherName,
      motherName ?? this.motherName,
      entryStatus ?? this.entryStatus,
      acceptanceType ?? this.acceptanceType,
      acceptanceYear ?? this.acceptanceYear!,
      city ?? this.city,
      address ?? this.address,
      homeNumber ?? this.homeNumber!,
      phoneNumber ?? this.phoneNumber!,
      email ?? this.email,
      fax ?? this.fax,
      buildingNumber ?? this.buildingNumber!,
      apartmentNumber ?? this.apartmentNumber!,
      mailBox ?? this.mailBox,
      mailCode ?? this.mailCode!,
      fatherNationality ?? this.fatherNationality,
      fatherCity ?? this.fatherCity,
      fatherAddress ?? this.fatherAddress,
      fatherJob ?? this.fatherJob,
      fatherJobPlace ?? this.fatherJobPlace,
      degreeOfKinship ?? this.degreeOfKinship,
      fatherPhoneNumber ?? this.fatherPhoneNumber!,
      fatherEmail ?? this.fatherEmail,
      fatherFax ?? this.fatherFax,
      qualification ?? this.qualification,
      place ?? this.place,
      graduationYear ?? this.graduationYear!,
      total ?? this.total!,
      percentage ?? this.percentage,
      faculty ?? this.faculty,
      depart ?? this.depart,
      program ?? this.program,
      year ?? this.year,
      studentId ?? this.studentId!,
      prefs ?? this.prefs!,
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) =>
      Student.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Student(name: $name, englishName: $englishName, code: $code, relegion: $relegion, gender: $gender, nationality: $nationality, birthDate: $birthDate, birthPlace: $birthPlace, socialStatus: $socialStatus, idType: $idType, nationalId: $nationalId, publishDate: $publishDate, publishPlace: $publishPlace, fatherName: $fatherName, motherName: $motherName, entryStatus: $entryStatus, acceptanceType: $acceptanceType, acceptanceYear: $acceptanceYear, city: $city, address: $address, homeNumber: $homeNumber, phoneNumber: $phoneNumber, email: $email, fax: $fax, buildingNumber: $buildingNumber, apartmentNumber: $apartmentNumber, mailBox: $mailBox, mailCode: $mailCode, fatherNationality: $fatherNationality, fatherCity: $fatherCity, fatherAddress: $fatherAddress, fatherJob: $fatherJob, fatherJobPlace: $fatherJobPlace, degreeOfKinship: $degreeOfKinship, fatherPhoneNumber: $fatherPhoneNumber, fatherEmail: $fatherEmail, fatherFax: $fatherFax, qualification: $qualification, place: $place, graduationYear: $graduationYear, total: $total, percentage: $percentage, faculty: $faculty, depart: $depart, program: $program, year: $year, studentId: $studentId, prefs: $prefs)';
  }

  @override
  bool operator ==(covariant Student other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.englishName == englishName &&
        other.code == code &&
        other.relegion == relegion &&
        other.gender == gender &&
        other.nationality == nationality &&
        other.birthDate == birthDate &&
        other.birthPlace == birthPlace &&
        other.socialStatus == socialStatus &&
        other.idType == idType &&
        other.nationalId == nationalId &&
        other.publishDate == publishDate &&
        other.publishPlace == publishPlace &&
        other.fatherName == fatherName &&
        other.motherName == motherName &&
        other.entryStatus == entryStatus &&
        other.acceptanceType == acceptanceType &&
        other.acceptanceYear == acceptanceYear &&
        other.city == city &&
        other.address == address &&
        other.homeNumber == homeNumber &&
        other.phoneNumber == phoneNumber &&
        other.email == email &&
        other.fax == fax &&
        other.buildingNumber == buildingNumber &&
        other.apartmentNumber == apartmentNumber &&
        other.mailBox == mailBox &&
        other.mailCode == mailCode &&
        other.fatherNationality == fatherNationality &&
        other.fatherCity == fatherCity &&
        other.fatherAddress == fatherAddress &&
        other.fatherJob == fatherJob &&
        other.fatherJobPlace == fatherJobPlace &&
        other.degreeOfKinship == degreeOfKinship &&
        other.fatherPhoneNumber == fatherPhoneNumber &&
        other.fatherEmail == fatherEmail &&
        other.fatherFax == fatherFax &&
        other.qualification == qualification &&
        other.place == place &&
        other.graduationYear == graduationYear &&
        other.total == total &&
        other.percentage == percentage &&
        other.faculty == faculty &&
        other.depart == depart &&
        other.program == program &&
        other.year == year &&
        other.studentId == studentId &&
        other.prefs == prefs;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        englishName.hashCode ^
        code.hashCode ^
        relegion.hashCode ^
        gender.hashCode ^
        nationality.hashCode ^
        birthDate.hashCode ^
        birthPlace.hashCode ^
        socialStatus.hashCode ^
        idType.hashCode ^
        nationalId.hashCode ^
        publishDate.hashCode ^
        publishPlace.hashCode ^
        fatherName.hashCode ^
        motherName.hashCode ^
        entryStatus.hashCode ^
        acceptanceType.hashCode ^
        acceptanceYear.hashCode ^
        city.hashCode ^
        address.hashCode ^
        homeNumber.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode ^
        fax.hashCode ^
        buildingNumber.hashCode ^
        apartmentNumber.hashCode ^
        mailBox.hashCode ^
        mailCode.hashCode ^
        fatherNationality.hashCode ^
        fatherCity.hashCode ^
        fatherAddress.hashCode ^
        fatherJob.hashCode ^
        fatherJobPlace.hashCode ^
        degreeOfKinship.hashCode ^
        fatherPhoneNumber.hashCode ^
        fatherEmail.hashCode ^
        fatherFax.hashCode ^
        qualification.hashCode ^
        place.hashCode ^
        graduationYear.hashCode ^
        total.hashCode ^
        percentage.hashCode ^
        faculty.hashCode ^
        depart.hashCode ^
        program.hashCode ^
        year.hashCode ^
        studentId.hashCode ^
        prefs.hashCode;
  }
}
