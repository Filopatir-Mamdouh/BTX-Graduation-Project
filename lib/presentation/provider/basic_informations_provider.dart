import 'package:flutter/material.dart';

class BasicInformationsProvider with ChangeNotifier {
  int basicInformationsIndex = 0;
  void changeBasicInformationsIndex({required int index}) {
    basicInformationsIndex = index;
    notifyListeners();
  }
}
