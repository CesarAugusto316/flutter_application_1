import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final dynamic message;

  const HerMessageBubble({super.key, this.message = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                margin: const EdgeInsets.only(bottom: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.tertiaryContainer),
                child: Text('This is my message $message')),
            const HerImageBubble(),
            const SizedBox(height: 14)
          ],
        ),
        // const HerImageBubble()
      ],
    );
  }
}

class HerImageBubble extends StatelessWidget {
  const HerImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          // color: Theme.of(context).colorScheme.tertiary,
          width: size.width * 0.7,
          height: 160,
          fit: BoxFit.cover,
          'https://www.ovrs.com/blog/wp-content/uploads/2014/12/iStock_000029861698_Medium-1.jpg'),
    );
  }
}
