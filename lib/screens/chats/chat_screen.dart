import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/chats/her_chat_bubble.dart';
import 'package:yes_no_app/widgets/chats/my_chat_bubble.dart';
import "dart:math";

import 'package:yes_no_app/widgets/shared/message_input_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network("https://picsum.photos/200")),
        ),
        title: const Row(
          children: [
            Text('My love'),
            Padding(padding: EdgeInsets.only(left: 8.0)),
            Icon(Icons.heart_broken),
          ],
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  final List<String> messages = [
    "Hello",
    "How are you?",
    "I'm fine",
    "What are you doing?",
    "I'm coding",
    "What are you coding?",
    "I'm coding a chat app",
    "That's cool",
    "Yes, it is",
    "I love coding",
    "Coding is fun",
    "Do you code too?",
    "Yes, I do",
    "We should code together",
    "That would be great",
    "I'm glad you think so",
    "Let's start coding",
    "Sure, let's do it",
    "Coding session begins now",
    "Excited to code with you",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 40,
                itemBuilder: (context, index) {
                  return (index % 2 == 0
                      ? MyChatBubble(
                          text:
                              " ${messages[Random().nextInt(messages.length - 1)]}")
                      : HerChatBubble(
                          text:
                              " ${messages[Random().nextInt(messages.length - 1)]}"));
                },
              ),
            ),
            const MessageInputBox(),
          ],
        ),
      ),
    );
  }
}
