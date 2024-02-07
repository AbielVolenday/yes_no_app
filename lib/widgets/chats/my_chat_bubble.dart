import "package:flutter/material.dart";
import "package:yes_no_app/domain/entities/messages.dart";

class MyChatBubble extends StatelessWidget {
  final ChatMessage message;

  const MyChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(16),
          ),
          child:
              Text(message.text, style: const TextStyle(color: Colors.white)),
        ),
        const Padding(padding: EdgeInsets.only(top: 8.0)),
      ],
    );
  }
}
