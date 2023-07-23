enum Owner { mine, her }

class Message {
  final String text;
  final Owner owner;
  final String? imageUrl;

  const Message({required this.text, required this.owner, this.imageUrl});
}
