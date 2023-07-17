import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final dynamic message;

  const MessageBubble({super.key, this.message = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            margin: const EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.primaryContainer),
            child: Text('This is my message $message')),
      ],
    );
  }
}
