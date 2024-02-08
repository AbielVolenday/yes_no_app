import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/messages.dart';
import 'package:uuid/uuid.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();

  final List<ChatMessage> messages = [
    ChatMessage(text: "Hello there", sender: Sender.user, id: "12asd"),
    ChatMessage(text: "Hi my love", sender: Sender.user, id: "a2sd"),
    ChatMessage(text: "Hi my love", sender: Sender.bot, id: "31asd"),
    ChatMessage(text: "Hi my love", sender: Sender.user, id: "bvvasd"),
    ChatMessage(text: "Hi my love", sender: Sender.bot, id: "asdcvxc")
  ];

  Future<void> addMessage(String text) async {
    if (text.isEmpty) return;
    messages.add(
        ChatMessage(text: text, sender: Sender.user, id: const Uuid().v4()));
    notifyListeners();
    moveScrolltoBottom();
  }

  Future<void> moveScrolltoBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}
