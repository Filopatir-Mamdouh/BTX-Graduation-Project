import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class ApiFunctions {
  final Client client;
  late Databases databases;
  final String databaseId = '645a9aab3568829d5c12';

  ApiFunctions(this.client) {
    databases = Databases(client);
  }
  Future<List<Document>> getDocuments(collectionId, queries) async {
    try {
      final response = await databases.listDocuments(
          databaseId: databaseId, collectionId: collectionId, queries: queries);
      return response.documents;
    } on AppwriteException catch (e) {
      print(e.message);
      return [];
    }
  }
}
