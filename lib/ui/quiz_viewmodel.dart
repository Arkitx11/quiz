import 'package:flutter/cupertino.dart';
import 'package:quiz/ui/quiz_screen_state.dart';
import '../data/question.dart';

class QuizViewModel extends ChangeNotifier {
  QuizViewModel({required List<Question> question}) : _questions = question {
    initializeState();
  }

  late final int _questionCount = _questions.length;

  final List<Question> _questions;

  int _index = 0;

  int _highscore = 0;

  late QuizScreenState _state;

  QuizScreenState get state => _state;

  void initializeState() {
    final Question first = _questions.first;
    _state = QuizScreenState(
      question: first.question,
      options: first.options,
      quizProgress: 0.0,
      answer: first.answer,
      highScore: 0,
      isCompleted: false
    );
    notifyListeners();
  }


  void onTap(String option) {
    if (option == _state.answer) _highscore += 10;
    nextQuestion();
    notifyListeners();
  }

  void nextQuestion() {
    _index++;
    if (_index >= _questionCount) {
      _state = QuizScreenState(
        question: _state.question,
        options: _state.options,
        answer: _state.answer,
        highScore: _highscore,
        quizProgress: 1.0,
        isCompleted: true
      );
      showResultScreen();
    }
    else {
      final Question question = _questions[_index];
      _state = QuizScreenState(
        question: question.question,
        options: question.options,
        answer: question.answer,
        highScore: _highscore,
        quizProgress: _state.quizProgress + 1 / _questions.length,
        isCompleted: false
      );
    }
    notifyListeners();
  }
  void showResultScreen() {
    print(_highscore);
  }

  void onPressingReset() {
    _index = 0;
    _highscore = 0;
    initializeState();
  }
}
