import 'package:dart_appwrite/dart_appwrite.dart';

import 'admin.dart';

class AssignTeam {
  late String teamId;
  late String userId;
  late String email;

  Teams team = Teams(Admin.admin);

  AssignTeam(this.userId, index, this.email) {
    var teamId = {
      "646767f1d0d04297c918", //Affairs
      "6467683842613b89300c", //Students
      "6467680500369eaec910" //Instructos
    };
    this.teamId = teamId.elementAt(index);
    result();
  }
  Future<void> result() async {
    await team.createMembership(
        teamId: teamId,
        userId: userId,
        email: email,
        roles: ['member'],
        url: Admin.appwriteApiEndpoint);
  }
}
