class QuizModel {
  final String id;
  final String title;
  final String description;

  QuizModel({
    required this.id,
    required this.title,
    required this.description,
  });

  // Factory constructor for JSON serialization
  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
    );
  }

  // Method to convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }
}
