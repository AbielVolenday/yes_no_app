import 'package:flutter/material.dart';

class MessageInputBox extends StatelessWidget {
  const MessageInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    final messageInputDecoration = InputDecoration(
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {},
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      hintText: "Type a message",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: messageInputDecoration,
      ),
    );
  }
}
