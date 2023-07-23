import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/message.dart';
import 'package:flutter_application_1/presentation/shared/her_message.dart';
import 'package:flutter_application_1/presentation/shared/message_bubble.dart';
import 'package:flutter_application_1/presentation/shared/message_input.dart';
import 'package:flutter_application_1/presentation/providers/chat_provider.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final messagesList = context.watch<ChatProvider>().messages;
    final sendMessage = context.read<ChatProvider>().sendMessage;
    final scrollController = context.read<ChatProvider>().scrollController;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    itemCount: messagesList.length,
                    itemBuilder: (context, index) {
                      final message = messagesList[index];

                      return ((message.owner.name == Owner.her.name)
                          ? HerMessageBubble(message: message.text)
                          : MessageBubble(message: message.text));
                    })),
            MessageInput(onSendMessage: sendMessage)
          ],
        ),
      ),
    );
  }
}
