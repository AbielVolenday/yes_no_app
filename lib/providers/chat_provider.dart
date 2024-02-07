import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class ChatProvider extends ChangeNotifier {
  final List<ChatMessage> messages = [
    ChatMessage(text: "Hello there", sender: Sender.user, id: "12asd"),
    ChatMessage(text: "Hi my love", sender: Sender.user, id: "asd"),
    ChatMessage(text: "Hi my love", sender: Sender.bot, id: "asd"),
    ChatMessage(text: "Hi my love", sender: Sender.user, id: "asd"),
    ChatMessage(text: "Hi my love", sender: Sender.bot, id: "asd")
  ];

  Future<void> sendMessage() async {
    // TODO: Implement sendMessage
  }
}
