import 'package:dio/dio.dart';
import 'package:yes_no_app/data/mappers/yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<ChatMessage> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final data = YesNoAnswer.fromJson(response.data);
    return data.toChatMessage();
  }
}
