import 'package:flutter/material.dart';
import 'package:quiz/ui/quiz_screen.dart';

void main() => runApp(QuizApp());

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
