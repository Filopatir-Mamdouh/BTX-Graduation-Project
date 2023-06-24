import 'package:appwrite/appwrite.dart';

class ApiFunctions {
  final Client client;
  late Databases databases;
  final String databaseId = '645a9aab3568829d5c12';

  ApiFunctions(this.client) {
    databases = Databases(client);
  }
  Future getDocuments(collectionId, queries) async {
    try {
      final response = await databases.listDocuments(
          databaseId: databaseId, collectionId: collectionId, queries: queries);
      return response;
    } on AppwriteException catch (e) {
      print(e.message);
    }
  }
}
