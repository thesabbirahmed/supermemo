import 'package:flutter/material.dart';
import '../models/quiz_model.dart';
import '../services/quiz_service.dart';

class QuizProvider with ChangeNotifier {
  List<QuizModel> _quizzes = [];
  bool _isLoading = false;

  List<QuizModel> get quizzes => _quizzes;
  bool get isLoading => _isLoading;

  Future<void> fetchQuizzes() async {
    _isLoading = true;
    notifyListeners();
    try {
      _quizzes = await QuizService.getQuizzes();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addQuiz(QuizModel quiz) async {
    await QuizService.addQuiz(quiz);
    _quizzes.add(quiz);
    notifyListeners();
  }

  Future<void> deleteQuiz(String quizId) async {
    await QuizService.deleteQuiz(quizId);
    _quizzes.removeWhere((quiz) => quiz.id == quizId);
    notifyListeners();
  }
}
