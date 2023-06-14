import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/models/user.dart';
import 'package:graduation_project/constant/backend/collections_id.dart';

class UserData {
  late String databaseId = "";

  ///  [Client] is a class provided by the Appwrite SDK.
  ///  It is used to communicate with the Appwrite API.
  ///  We will be receiving this object from the constructor
  final Client client;

  ///  [Account] is also a class provided by the Appwrite SDK.
  ///  It is to access the all the account related methods. like get account
  ///  or create account , update account etc
  late Account account;
  //  late keyowrd due to Null Safety
  //  to know more about Null Safety visit https://dart.dev/null-safety/understanding-null-safety

  /// [Databases] class to retrieve documents form a specific collection
  late Databases databases;

  //  We have created a constructor which will initialize the account object
  //  Account class requires an object of Client.
  //  I have decided to make a client object in the provider itself so you will
  // see that soon
  UserData(this.client) {
    account = Account(client);
    databases = Databases(client);
    databaseId = "645a9aab3568829d5c12";
  }

  Future<List> isUser(uid, nid) async {
    try {
      final student = await databases.listDocuments(
          databaseId: databaseId,
          collectionId: CollectionId().studentsId,
          queries: [
            Query.equal('NationalID', nid),
            Query.equal('studentid', uid)
          ]);
      final ins = await databases.listDocuments(
          databaseId: databaseId,
          collectionId: CollectionId().insId,
          queries: [Query.equal('NationalID', nid), Query.equal('InsID', uid)]);
      if (student.documents.isNotEmpty) {
        return [true, 0];
      } else if (ins.documents.isNotEmpty) {
        return [true, 1];
      } else {
        return [false];
      }
    } on AppwriteException catch (e) {
      debugPrint(e.message);
      return [];
    }
  }
}
