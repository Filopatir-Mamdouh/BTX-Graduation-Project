import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/Pages/chat/chat_message_model.dart';

class OtherChatBubble extends StatelessWidget {
  const OtherChatBubble({
    super.key,
    required this.chatMessage,
  });
  final ChatMessageModel chatMessage;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              chatMessage.name,
              style: TextStyle(
                fontSize: 14.0,
                color: chatMessage.role == "instructor"
                    ? Colors.orange
                    : AppColors.primary,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
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
                  Text(
                    chatMessage.message,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: AppColors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
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
