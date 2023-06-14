import 'package:dart_appwrite/dart_appwrite.dart';

class AssignTeam {
  late String teamId;
  late String userId;
  late String email;

  static const appwriteApiEndpoint = 'https://cloud.appwrite.io/v1';
  static const appwriteProjectId = '645a96d34347bca64a80';
  static const appwriteApiKey =
      '5e9630923b0d7f42f30aa249331d3a27dc9f0cb3840e979f314f696fa92185b912a436ae36b7777b28eb14d90dc1d8b1da7784fc637f39b7f4a6ae39c3a7416e541876c112e8ce4deca27aaed8fd717c5aec4b4d81e351ef9dc1ce0a0c348e796982ce72141ab87565473895507e140355b638fcc58af5a052cb67284b7ba41c';

  static Client admin = Client()
      .setEndpoint(appwriteApiEndpoint) // Your Appwrite Endpoint
      .setProject(appwriteProjectId) // Your project ID
      .setKey(appwriteApiKey);

  Teams team = Teams(admin);

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
        url: appwriteApiEndpoint);
  }
}
