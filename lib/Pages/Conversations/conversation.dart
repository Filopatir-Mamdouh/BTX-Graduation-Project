import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/chat/chat_screen.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/Pages/Conversations/conversation_model.dart';

class Conversation extends StatelessWidget {
  const Conversation({
    super.key,
    required this.conversation,
  });
  final ConversationModel conversation;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(
              subjectName: conversation.subjectName,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                conversation.subjectName,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 5.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Text(
                    "${conversation.lastSenderName} : ",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    conversation.lastMessage,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
