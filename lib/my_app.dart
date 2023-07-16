import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat/chat_screen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void onPress() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(selectColor: 0, theme: Brightness.light),
        home: const ChatScreen());
  }
}
