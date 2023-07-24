import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/http/messsage_res.dart';

// singleton
class _MessagesService {
  final _http = Dio(BaseOptions(
      baseUrl: 'https://yesno.wtf', responseType: ResponseType.json));

  Future<MessageRes> getMessage() async {
    final res = await _http.get<Map<String, dynamic>>('/api');

    return MessageRes.fromJson(res.data);
  }
}

final yesNoService = _MessagesService();
