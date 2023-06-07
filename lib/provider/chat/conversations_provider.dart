import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Conversations/conversation_model.dart';

class ConversationsProvider with ChangeNotifier {
  List<ConversationModel> conversations = [
    const ConversationModel(
      subjectName: "المادة 1",
      lastSenderName: "أحمد",
      lastMessage: "إتحلت إزاي؟",
    ),
    const ConversationModel(
      subjectName: "المادة 2",
      lastSenderName: "محمد",
      lastMessage: "لي؟",
    ),
    const ConversationModel(
      subjectName: "المادة 3",
      lastSenderName: "أحمد",
      lastMessage: "الإمتحان عامل إزاي؟",
    ),
  ];
}
