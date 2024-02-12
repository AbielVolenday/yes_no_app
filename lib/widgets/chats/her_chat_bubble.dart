import "package:flutter/material.dart";
import 'package:shimmer/shimmer.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class HerChatBubble extends StatelessWidget {
  final ChatMessage message;

  const HerChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 8.0)),
        HerImageBubble(message: message),
        const SizedBox(height: 10),
      ],
    );
  }
}

class HerImageBubble extends StatelessWidget {
  final ChatMessage message;

  const HerImageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        message.imageUrl.toString(),
        fit: BoxFit.cover,
        width: size.width * 0.7,
        height: 200,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Shimmer.fromColors(
              direction: ShimmerDirection.rtl,
              baseColor: const Color.fromARGB(255, 233, 233, 233),
              highlightColor: const Color.fromARGB(255, 223, 223, 223),
              child: child);
        },
      ),
    );
  }
}
