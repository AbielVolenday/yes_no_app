import "package:flutter/material.dart";

class MyChatBubble extends StatelessWidget {
  final String text;

  const MyChatBubble({
    super.key,
    required this.text,
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
          child: Text(text, style: const TextStyle(color: Colors.white)),
        ),
        const Padding(padding: EdgeInsets.only(top: 8.0)),
      ],
    );
  }
}
