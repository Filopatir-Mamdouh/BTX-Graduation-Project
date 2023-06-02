import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/chat/constants/constants.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:graduation_project/Pages/chat/other_chat_bubble.dart';
import 'package:graduation_project/Pages/chat/you_chat_bubble.dart';
import 'package:graduation_project/Pages/chat/chat_message_model.dart';
import 'package:graduation_project/Provider/chat/chat_provider.dart';

import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key, required this.subjectName});
  final String subjectName;
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);
    List<ChatMessageModel> chat = chatProvider.chat;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subjectName,
                      style: const TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      "assets/images/app_logo.jpeg",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            itemBuilder: (context, index) =>
                                chat[index].email == myEmail
                                    ? YouChatBubble(chatMessage: chat[index])
                                    : OtherChatBubble(chatMessage: chat[index]),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 10.0,
                            ),
                            itemCount: chat.length,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 60,
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            right: 10.0,
                            bottom: 10.0,
                            left: 20.0,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            border: Border.all(
                              color: AppColors.grey,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (messageController.text.isNotEmpty) {
                                    chatProvider.sendMessage(
                                      email: myEmail,
                                      name: myName,
                                      role: myRole,
                                      message: messageController.text,
                                      time:
                                          "${TimeOfDay.now().hour}:${TimeOfDay.now().minute} ${TimeOfDay.now().period.name}",
                                    );
                                    messageController.clear();
                                    chatProvider.changeIsMessageEmpty(
                                        isEmpty: true);
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                    color: chatProvider.isMessageEmpty
                                        ? AppColors.primary.withOpacity(0.7)
                                        : AppColors.primary,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.send_rounded,
                                      textDirection: TextDirection.ltr,
                                      size: 28.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: messageController,
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) => value.isEmpty
                                      ? chatProvider.changeIsMessageEmpty(
                                          isEmpty: true)
                                      : chatProvider.changeIsMessageEmpty(
                                          isEmpty: false),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "type your message",
                                      hintStyle: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   width: double.infinity,
                        //   height: 100.0,
                        //   color: Colors.red,
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



/*

Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        YouChatBubble(
                          role: "student",
                          message:
                              "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text",
                          time: "Time",
                        ),
                      ],
                    ),
 */