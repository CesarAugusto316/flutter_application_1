import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final String message;
  final String imgUrl;

  const HerMessageBubble({super.key, required this.imgUrl, this.message = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            margin: const EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.tertiaryContainer),
            child: Text(
              message,
              style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
            )),
        HerImageBubble(imgUrl: imgUrl),
        const SizedBox(height: 14)
      ],
    );
  }
}

class HerImageBubble extends StatelessWidget {
  final String imgUrl;

  const HerImageBubble({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imgUrl,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Container(
              height: 160,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.tertiaryContainer));
        },
        width: size.width * 0.7,
        height: 160,
        fit: BoxFit.cover,
      ),
    );
  }
}
