import 'package:flutter/material.dart';
// import 'package:flutter_application_1/presentation/providers/chat_provider.dart';
// import 'package:provider/provider.dart';

class MessageInput extends StatelessWidget {
  final Future<void> Function(String) onSendMessage;

  MessageInput({super.key, required this.onSendMessage});

  final _inputController = TextEditingController();
  final _focusNode = FocusNode();

  _outlineBorder(BuildContext context) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary));

  _inputDecoration(BuildContext context) {
    // final sendMessage = context.watch<ChatProvider>().sendMessage;

    return InputDecoration(
        filled: true,
        hintText: 'End your message with ?',
        enabledBorder: _outlineBorder(context),
        focusedBorder: _outlineBorder(context),
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            onSendMessage(_inputController.value.text);
            _inputController.clear();
            _focusNode.requestFocus();
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    // final sendMessage = context.watch<ChatProvider>().sendMessage;

    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: TextFormField(
          decoration: _inputDecoration(context),
          focusNode: _focusNode,
          controller: _inputController,
          onTapOutside: (e) {
            _focusNode.unfocus();
          },
          onFieldSubmitted: (value) {
            onSendMessage(value);
            _inputController.clear();
            _focusNode.requestFocus();
          },
        ));
  }
}
