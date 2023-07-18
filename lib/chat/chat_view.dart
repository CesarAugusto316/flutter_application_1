import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/her_message.dart';
import 'package:flutter_application_1/shared/message_bubble.dart';
import 'package:flutter_application_1/shared/message_input.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    itemCount: 30,
                    itemBuilder: (context, index) => index % 2 == 0
                        ? MessageBubble(message: index + 1)
                        : HerMessageBubble(message: index * 3))),
            MessageInput()
          ],
        ),
      ),
    );
  }
}
