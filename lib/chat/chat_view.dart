import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(child: Text('hello')),
        Center(child: Text('world')),
      ],
    );
  }
}
