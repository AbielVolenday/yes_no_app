import 'package:flutter/material.dart';
import 'package:yes_no_app/data/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/messages.dart';
import 'package:uuid/uuid.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();

  final List<ChatMessage> messages = [
   
  ];

  Future<void> herMessage() async {
    final herMessage = await GetYesNoAnswer().getAnswer();
    messages.add(herMessage);
    notifyListeners();
    moveScrolltoBottom();
  }

  Future<void> addMessage(String text) async {
    if (text.isEmpty) return;

    messages.add(
        ChatMessage(text: text, sender: Sender.user, id: const Uuid().v4()));
    notifyListeners();
    moveScrolltoBottom();

    if (text.endsWith("?")) {
      herMessage();
    }
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
