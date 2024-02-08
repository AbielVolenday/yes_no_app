import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/providers/chat_provider.dart';

class MessageInputBox extends StatelessWidget {
  const MessageInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    final inputController = TextEditingController();
    final inputFocusNode = FocusNode();
    final theme = Theme.of(context).colorScheme.primary;
    final messageInputDecoration = InputDecoration(
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final text = inputController.value.text;
          chatProvider.addMessage(text);
          inputController.clear();
          inputFocusNode.requestFocus();
        },
      ),
      fillColor: const Color.fromARGB(255, 235, 234, 234),
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      hintText: 'End your message with "?"',
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: theme),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: theme),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onFieldSubmitted: (value) {
          final text = inputController.value.text;
          chatProvider.addMessage(text);
          inputController.clear();
          inputFocusNode.requestFocus();
        },
        decoration: messageInputDecoration,
        controller: inputController,
        focusNode: inputFocusNode,
      ),
    );
  }
}
