import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  MessageInput({super.key});

  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: TextFormField(
          controller: inputController,
          onFieldSubmitted: (value) {
            inputController.clear();
            print(value);
          },
          decoration: const InputDecoration(
              filled: true,
              suffixIcon: IconButton(
                icon: Icon(Icons.send_outlined),
                onPressed: null,
              )),
        ));
  }
}
