import 'dart:async';

import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/constant/backend/collections_id.dart';

import 'admin.dart';

class GetUser {
  late Databases databases;
  late String databaseId;

  GetUser() {
    databases = Databases(Admin.admin);
    databaseId = "645a9aab3568829d5c12";
  }

  Future<int> isUser(int uid, int nid) async {
    try {
      final student = await databases.listDocuments(
          databaseId: databaseId,
          collectionId: CollectionId().studentsId,
          queries: [
            Query.equal('studentid', uid),
            Query.equal('NationalID', nid)
          ]);
      if (student.documents.isNotEmpty) {
        return 0;
      } else {
        final ins = await databases.listDocuments(
            databaseId: databaseId,
            collectionId: CollectionId().insId,
            queries: [
              Query.equal('insid', uid),
              Query.equal('nationalid', nid)
            ]);
        if (ins.documents.isNotEmpty) {
          return 1;
        }
      }
    } on AppwriteException catch (e) {
      debugPrint(e.message);
      return 2;
    }
    return 3;
  }
}
