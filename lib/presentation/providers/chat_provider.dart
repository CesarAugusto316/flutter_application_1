import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/Message.dart';
import 'package:flutter_application_1/services/messages_service.dart';

class ChatProvider extends ChangeNotifier {
  final scrollController = ScrollController();
  final messagesServices = MessagesService.getInstance();

  final List<Message> messages = [
    const Message(text: 'hola carlotita', owner: Owner.mine),
    const Message(text: 'bien', owner: Owner.mine),
    const Message(text: 'Hola cesar', owner: Owner.her),
    const Message(text: 'como estas?', owner: Owner.her),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      return;
    }
    messages.add(Message(text: text, owner: Owner.mine));
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 170), _scrollToBottom);

    if (text.endsWith('?')) {
      try {
        final res = await messagesServices.getMessage();

        messages.add(Message(
            text: res.data['answer'],
            owner: Owner.her,
            imageUrl: res.data['image']));
        notifyListeners();

        await Future.delayed(
            const Duration(milliseconds: 170), _scrollToBottom);
      } catch (e) {
        print(e);
      }
    }
  }

  void _scrollToBottom() {
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        curve: Curves.bounceIn, duration: const Duration(milliseconds: 300));
  }
}
