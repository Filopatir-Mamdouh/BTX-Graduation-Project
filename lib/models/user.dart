import 'package:appwrite/models.dart';

class User {
  /// User ID.
  final String $id;

  /// User name.
  final String name;

  /// User registration date in Unix timestamp.
  final int registration;

  /// User status. 0 for Unactivated, 1 for active and 2 is blocked.
  final int status;

  /// Unix timestamp of the most recent password update
  final int passwordUpdate;

  /// User email address.
  final String email;

  /// Email verification status.
  final bool emailVerification;

  /// User Team ID
  final String teamId;

  /// User preferences as a key-value object
  final Preferences prefs;

  User(
      {required this.$id,
      required this.name,
      required this.registration,
      required this.status,
      required this.passwordUpdate,
      required this.email,
      required this.emailVerification,
      required this.prefs,
      required this.teamId});

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      $id: map['\$id'],
      name: map['name'],
      registration: map['registration'],
      status: map['status'],
      passwordUpdate: map['passwordUpdate'],
      email: map['email'],
      emailVerification: map['emailVerification'],
      teamId: map['teamId'],
      // Here preference is actually a different class model. This is left
      // as an exercise for you to discover. The more you discover, the more
      // interesting it gets
      prefs: Preferences.fromMap(map['prefs']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "\$id": $id,
      "name": name,
      "registration": registration,
      "status": status,
      "passwordUpdate": passwordUpdate,
      "email": email,
      "emailVerification": emailVerification,
      "teamId": teamId,
      "prefs": prefs.toMap(),
    };
  }
}
