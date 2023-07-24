class MessageRes {
  final String? answer;
  final bool? forced;
  final String? image;

  MessageRes({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory MessageRes.fromJson(Map<String, dynamic>? json) => MessageRes(
        answer: json?["answer"],
        forced: json?["forced"],
        image: json?["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };
}
