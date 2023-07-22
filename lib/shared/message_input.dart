import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  MessageInput({super.key});

  final inputController = TextEditingController();
  final focusNode = FocusNode();

  _outlineBorder(BuildContext context) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary));

  _inputDecoration(BuildContext context) => InputDecoration(
      filled: true,
      hintText: 'End your message with ?',
      enabledBorder: _outlineBorder(context),
      focusedBorder: _outlineBorder(context),
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          print(inputController.value.text);
          inputController.clear();
          focusNode.unfocus();
        },
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: TextFormField(
          focusNode: focusNode,
          controller: inputController,
          onTapOutside: (e) {
            focusNode.unfocus();
          },
          onFieldSubmitted: (value) {
            inputController.clear();
            print(value);
            focusNode.requestFocus();
          },
          decoration: _inputDecoration(context),
        ));
  }
}
