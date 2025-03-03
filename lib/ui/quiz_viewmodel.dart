import 'package:flutter/foundation.dart';
import 'package:quiz/data/question.dart';
import 'package:quiz/ui/quiz_screen_state.dart';

class QuizViewModel extends ChangeNotifier {
  int _index = 0;
  final List<Question> questions;

  QuizViewModel({required this.questions}) {
    _state.
  }

  final QuizScreenState _state;

  QuizScreenState get state => _state;


}
