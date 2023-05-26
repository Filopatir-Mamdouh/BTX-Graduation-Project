import 'package:flutter/material.dart';

class DocumentRequestProvider with ChangeNotifier {
  String? document;
  List<String> documents = ["1", "2", "3", "4"];
  void changeDocument({required String selectedDocument}) {
    document = selectedDocument;
    notifyListeners();
  }
}
