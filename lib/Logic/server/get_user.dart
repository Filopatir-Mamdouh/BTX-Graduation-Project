import 'dart:async';

import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/constant/backend/collections_id.dart';

import '../../constant/backend/enums.dart';
import '../../models/user.dart';
import 'admin.dart';

class GetUser {
  late Databases databases;
  late String databaseId;
  late String collectionId;

  GetUser() {
    databases = Databases(Admin.admin);
    databaseId = "645a9aab3568829d5c12";
    collectionId = CollectionId().usersId;
  }

  Future<List> isUser(int uid, int nid) async {
    try {
      final response = await databases.listDocuments(
          databaseId: databaseId,
          collectionId: collectionId,
          queries: [
            Query.equal('userId', uid),
            Query.equal('NationalID', '$nid')
          ]);
      if (response.documents.isNotEmpty) {
        print(response.documents.first.data.toString());
        final name = response.documents.first.data['username'];
        switch (response.documents.first.data['Roles']) {
          case 'affairs':
            return [0, name];
          case 'students':
            return [1, name];
          case 'instructors':
            return [2, name];
        }
      }
    } on AppwriteException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }

  Future<Roles> getRole(email) async {
    try {
      final response = await databases.listDocuments(
          databaseId: databaseId,
          collectionId: collectionId,
          queries: [
            Query.equal('email', '$email'),
          ]);
      if (response.documents.isNotEmpty) {
        print(response.documents.first.data.toString());
        final name = response.documents.first.data['username'];
        switch (response.documents.first.data['Roles']) {
          case 'affairs':
            return Roles.affairs;
          case 'students':
            return Roles.students;
          case 'instructors':
            print("INs");
            return Roles.instructors;
          default:
            return Roles.none;
        }
      }
    } on AppwriteException catch (e) {
      debugPrint(e.message);
    }
    return Roles.none;
  }
}
