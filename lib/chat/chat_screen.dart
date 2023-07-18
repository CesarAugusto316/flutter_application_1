import 'package:flutter/material.dart';
import '../appBar/my_app_bar.dart';
import './chat_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: ChatView(),
      // bottomNavigationBar: MessageInput(),
    );
  }
}
