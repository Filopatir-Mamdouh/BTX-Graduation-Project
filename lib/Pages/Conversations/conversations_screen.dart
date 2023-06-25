import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/Pages/Conversations/conversation.dart';
import 'package:graduation_project/Pages/Conversations/conversation_model.dart';
import 'package:graduation_project/provider/chat/conversations_provider.dart';

import 'package:provider/provider.dart';

import '../chat/chat_screen.dart';
import 'conversations_responsive.dart';

class ConversationsScreen extends StatelessWidget {
  const ConversationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ConversationModel> conversations =
        ConversationsProvider().conversations;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ConversationsProvider>(
          create: (_) => ConversationsProvider(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context as BuildContext,
                    MaterialPageRoute(
                        builder: (context) => ChatScreen(
                              subjectName: '',
                            )));
              }, //ChatScreen
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "المحادثات",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.08,
                        vertical: 10.0,
                      ),
                      itemBuilder: (context, index) => Conversation(
                        conversation: conversations[index],
                      ),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15.0,
                      ),
                      itemCount: conversations.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
