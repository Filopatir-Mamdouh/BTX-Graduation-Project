import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/pages/chat/chat_message_model.dart';

class YouChatBubble extends StatelessWidget {
  const YouChatBubble({
    super.key,
    required this.chatMessage,
  });
  final ChatMessageModel chatMessage;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text(
              "You",
              style: TextStyle(
                fontSize: 14.0,
                color: chatMessage.role == "instructor"
                    ? Colors.orange
                    : AppColors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              decoration: BoxDecoration(
                color: AppColors.primary,
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      chatMessage.message,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      chatMessage.time,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: chatMessage.role == "instructor"
                            ? Colors.orange
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
