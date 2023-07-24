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
    final handleReply = context.read<ChatProvider>().handleReply;
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
                          ? HerMessageBubble(
                              message: message.text,
                              imgUrl: message.imageUrl ??
                                  'https://www.ovrs.com/blog/wp-content/uploads/2014/12/iStock_000029861698_Medium-1.jpg',
                            )
                          : MessageBubble(message: message.text));
                    })),
            MessageInput(onSendMessage: handleReply)
          ],
        ),
      ),
    );
  }
}
