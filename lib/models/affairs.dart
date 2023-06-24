// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Affairs {
  final int affairID;
  final String Name;
  final String Role;
  final int phone;
  final int nationalID;
  Affairs({
    required this.affairID,
    required this.Name,
    required this.Role,
    required this.phone,
    required this.nationalID,
  });

  Affairs copyWith({
    int? affairID,
    String? Name,
    String? Role,
    int? phone,
    int? nationalID,
  }) {
    return Affairs(
      affairID: affairID ?? this.affairID,
      Name: Name ?? this.Name,
      Role: Role ?? this.Role,
      phone: phone ?? this.phone,
      nationalID: nationalID ?? this.nationalID,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affairID': affairID,
      'Name': Name,
      'Role': Role,
      'phone': phone,
      'nationalID': nationalID,
    };
  }

  factory Affairs.fromMap(Map<String, dynamic> map) {
    return Affairs(
      affairID: map['affairID'] as int,
      Name: map['Name'] as String,
      Role: map['Role'] as String,
      phone: map['phone'] as int,
      nationalID: map['nationalID'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Affairs.fromJson(String source) =>
      Affairs.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Affairs(affairID: $affairID, Name: $Name, Role: $Role, phone: $phone, nationalID: $nationalID)';
  }

  @override
  bool operator ==(covariant Affairs other) {
    if (identical(this, other)) return true;

    return other.affairID == affairID &&
        other.Name == Name &&
        other.Role == Role &&
        other.phone == phone &&
        other.nationalID == nationalID;
  }

  @override
  int get hashCode {
    return affairID.hashCode ^
        Name.hashCode ^
        Role.hashCode ^
        phone.hashCode ^
        nationalID.hashCode;
  }
}
