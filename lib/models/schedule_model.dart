class ScheduleModel {
  final String id;
  final String title;
  final DateTime dateTime;

  ScheduleModel({
    required this.id,
    required this.title,
    required this.dateTime,
  });

  // Factory constructor for JSON serialization
  factory ScheduleModel.fromJson(Map<String, dynamic> json) {
    return ScheduleModel(
      id: json['id'],
      title: json['title'],
      dateTime: DateTime.parse(json['dateTime']),
    );
  }

  // Method to convert to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'dateTime': dateTime.toIso8601String(),
    };
  }
}
