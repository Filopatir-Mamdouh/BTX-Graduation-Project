import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:graduation_project/constant/backend/enums.dart';

class Instructors {
  final int insId;
  final String insName;
  final List<ITSubjects> subjects;
  final int phone;
  final int nationalID;
  Instructors({
    required this.insId,
    required this.insName,
    required this.subjects,
    required this.phone,
    required this.nationalID,
  });

  Instructors copyWith({
    int? insId,
    String? insName,
    List<ITSubjects>? subjects,
    int? phone,
    int? nationalID,
  }) {
    return Instructors(
      insId: insId ?? this.insId,
      insName: insName ?? this.insName,
      subjects: subjects ?? this.subjects,
      phone: phone ?? this.phone,
      nationalID: nationalID ?? this.nationalID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insId': insId,
      'insName': insName,
      'subjects': subjects,
      'phone': phone,
      'nationalID': nationalID,
    };
  }

  factory Instructors.fromMap(Map<String, dynamic> map) {
    return Instructors(
      insId: map['insId'] as int,
      insName: map['insName'] as String,
      subjects: List<ITSubjects>.from((map['subjects'] as List<ITSubjects>)),
      phone: map['phone'] as int,
      nationalID: map['nationalID'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Instructors.fromJson(String source) =>
      Instructors.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Instructors(insId: $insId, insName: $insName, subjects: $subjects, phone: $phone, nationalID: $nationalID)';
  }

  @override
  bool operator ==(covariant Instructors other) {
    if (identical(this, other)) return true;

    return other.insId == insId &&
        other.insName == insName &&
        listEquals(other.subjects, subjects) &&
        other.phone == phone &&
        other.nationalID == nationalID;
  }

  @override
  int get hashCode {
    return insId.hashCode ^
        insName.hashCode ^
        subjects.hashCode ^
        phone.hashCode ^
        nationalID.hashCode;
  }
}
