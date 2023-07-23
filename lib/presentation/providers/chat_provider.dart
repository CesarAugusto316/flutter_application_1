import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/Message.dart';

class ChatProvider extends ChangeNotifier {
  final scrollController = ScrollController();

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
  }

  void _scrollToBottom() {
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        curve: Curves.bounceIn, duration: const Duration(milliseconds: 300));
  }
}
