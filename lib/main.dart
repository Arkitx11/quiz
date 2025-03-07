import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/data/quiz_repository.dart';
import 'package:quiz/ui/quiz_screen.dart';
import 'package:quiz/ui/quiz_viewmodel.dart';

void main() => runApp(
  ChangeNotifierProvider(
    child: const QuizApp(),
    create: (context) => QuizViewModel(question: questions),
  ),
);

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: QuizScreen(),
    );
  }
}
