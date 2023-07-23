import 'dart:js_interop';

import 'package:dio/dio.dart';
// import 'package:flutter_application_1/models/http/messsage_res.dart';

// singleton
class MessagesService {
  static late MessagesService instance;

  static MessagesService getInstance() {
    if () {
      instance = MessagesService._();
    }
    return instance;
  }

  MessagesService._();

  final _http = Dio(BaseOptions(baseUrl: 'https://yesno.wtf'));

  Future getMessage() async {
    return _http.get('/api');
  }
}
