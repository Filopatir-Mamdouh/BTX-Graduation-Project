import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IsOkNotifier extends ChangeNotifier {
  String _text = "";
  String get text => _text;

  void isOk() {
    _text = "";
    notifyListeners();
  }

  void notOk() {
    _text = "تأكد من كود المستخدم والرقم القومى";
    notifyListeners();
  }
}

final isOkProvider =
    ChangeNotifierProvider<IsOkNotifier>((ref) => IsOkNotifier());

class IsAvailable extends StateNotifier<List<bool>> {
  IsAvailable() : super([true, false]);

  void reverse() {
    state = [!state[0], !state[1]];
  }
}

final isAvailableProvider =
    StateNotifierProvider.autoDispose<IsAvailable, List<bool>>(
        (ref) => IsAvailable());
