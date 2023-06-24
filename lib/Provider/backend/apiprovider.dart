import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graduation_project/Logic/auth/authentication.dart';
import 'package:graduation_project/Provider/backend/client.dart';
import 'package:graduation_project/models/student.dart';
import '../../Logic/database/database.dart';
import '../../constant/backend/collections_id.dart';
import '../../models/Affairs.dart';
import '../../models/instructor.dart';
import 'auth.dart';

final apiProvider =
    Provider<ApiFunctions>((ref) => ApiFunctions(ref.watch(clientProvider)));

final affairsProvider = FutureProvider<Affairs>((ref) async {
  final Authentication auth = ref.watch(authProvider);
  final ApiFunctions api = ref.watch(apiProvider);
  final useremail = await auth.getAccount();
  List<String> queries = [Query.equal('email', '${useremail?.email}')];
  final response = await api.getDocuments(CollectionId().affairs, queries);
  return Affairs.fromMap(response.first.data);
});

final insProvider = FutureProvider<Instructors>((ref) async {
  final Authentication auth = ref.watch(authProvider);
  final ApiFunctions api = ref.watch(apiProvider);
  final useremail = await auth.getAccount();
  List<String> queries = [Query.equal('email', '${useremail?.email}')];
  final response = await api.getDocuments(CollectionId().insId, queries);
  Map<String, dynamic> data = response.first.data;
  return Instructors(
      insId: data['insid'],
      insName: data['insname'],
      subjects: data['subjectid'],
      phone: data['phone'],
      nationalID: data['nationalid'],
      email: data['email']);
});

final studentProvider = FutureProvider<Student>((ref) async {
  final Authentication auth = ref.watch(authProvider);
  final ApiFunctions api = ref.watch(apiProvider);
  final useremail = await auth.getAccount();
  List<String> queries = [Query.equal('email', '${useremail?.email}')];
  final response = await api.getDocuments(CollectionId().studentsId, queries);
  return Student.fromMap(response.first.data);
});
