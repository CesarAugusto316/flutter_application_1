import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.red[200]),
      child: Column(
        children: [
          Expanded(
              child: Container(
                  // decoration: BoxDecoration(color: Colors.red[400]),
                  )),
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(28)),
            padding: const EdgeInsets.all(16),
            child: const Center(child: Text('hello')),
          ),
          const SizedBox(height: 20),
          Container(
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(16),
              child: const Center(child: Text('world'))),
        ],
      ),
    );
  }
}
