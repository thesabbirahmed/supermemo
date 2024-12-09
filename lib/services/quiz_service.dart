import '../models/quiz_model.dart';

class QuizService {
  static Future<List<QuizModel>> getQuizzes() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate API call
    return [
      QuizModel(id: '1', title: 'Math Quiz', description: 'Basic math concepts'),
      QuizModel(id: '2', title: 'Science Quiz', description: 'Basic science topics'),
    ];
  }

  static Future<void> addQuiz(QuizModel quiz) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate backend save
  }

  static Future<void> deleteQuiz(String quizId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate backend delete
  }
}
