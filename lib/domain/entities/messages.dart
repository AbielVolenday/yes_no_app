enum Sender { user, bot }

class ChatMessage {
  final String text;
  final Sender sender;
  final String? imageUrl;
  final String id;

  ChatMessage({
    required this.text,
    required this.sender,
    required this.id,
    this.imageUrl,
  });
}

