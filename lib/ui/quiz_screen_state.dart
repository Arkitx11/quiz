import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_screen_state.freezed.dart';

@freezed
abstract class QuizScreenState with _$QuizScreenState {
  const factory QuizScreenState({
    required String question,
    required List<String> options,
    required String answer,
    required int highScore,
    required double quizProgress,
    required bool isCompleted
  }) = _QuizScreenState;
}