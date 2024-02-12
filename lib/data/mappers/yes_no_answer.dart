import 'package:uuid/uuid.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class YesNoAnswer {
  String answer;
  bool forced;
  String image;

  YesNoAnswer({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoAnswer.fromJson(Map<String, dynamic> json) => YesNoAnswer(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  ChatMessage toChatMessage() {
    return ChatMessage(
        text: answer,
        sender: Sender.bot,
        id: const Uuid().v4(),
        imageUrl: image);
  }
}
