import 'package:flutter/material.dart';
import 'package:graduation_project/chat/chat_message_model.dart';

class ChatProvider with ChangeNotifier {
  bool isMessageEmpty = true;
  List<ChatMessageModel> chat = [
    const ChatMessageModel(
      email: "ahmed20@gmail.com",
      name: "Ahmed",
      role: "student",
      message: "hey",
      time: "12:13 pm",
    ),
    const ChatMessageModel(
      email: "instructor@gmail.com",
      name: "Dr Mohamed",
      role: "instructor",
      message: "hey",
      time: "12:16 pm",
    ),
  ];

  void sendMessage({
    required String email,
    required String name,
    required String role,
    required String message,
    required String time,
  }) {
    chat.add(
      ChatMessageModel(
        email: email,
        name: name,
        role: role,
        message: message,
        time: time,
      ),
    );
    notifyListeners();
  }

  void changeIsMessageEmpty({required bool isEmpty}) {
    isMessageEmpty = isEmpty;
    notifyListeners();
  }
}
