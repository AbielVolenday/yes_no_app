import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/200"),
          ),
        ),
        title: const Row(
          children: [
            Text('My love'),
            Padding(padding: EdgeInsets.only(left: 8.0)),
            Icon(Icons.heart_broken),
          ],
        ),
      ),
    );
  }
}
