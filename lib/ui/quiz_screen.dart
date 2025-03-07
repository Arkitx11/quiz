import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/ui/quiz_viewmodel.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizViewModel>(
      builder:
          (context, value, child) => Scaffold(
            appBar: AppBar(
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: LinearProgressIndicator(value: value.state.quizProgress),
              ),
              centerTitle: true,
              title: Text('Quiz'),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.restart_alt),
                ),
              ],
            ),
            body: QuizScreenBody(),
          ),
    );
  }
}

class ResetProgressDialogBox extends StatelessWidget {
  const ResetProgressDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Reset Progress?'),
      icon: Icon(Icons.restart_alt),
      content: Text('The following action will reset your progress'),
      actions: [
        TextButton(onPressed: () {}, child: Text('No')),
        TextButton(onPressed: () {}, child: Text('Yes')),
      ],
    );
  }
}

class HighScoreDialogBox extends StatelessWidget {
  const HighScoreDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: Icon(Icons.emoji_events),
      title: Text('Result'),
      content: Text('Your Highscore is: 100'),
      actions: [
        TextButton(onPressed: () {}, child: Text('Restart')),
        TextButton(onPressed: () {}, child: Text('Dismiss')),
      ],
    );
  }
}

class QuizScreenBody extends StatelessWidget {
  const QuizScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      spacing: 66.0,
      children: [
        Text(Provider.of<QuizViewModel>(context).state.question),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: MultiChoiceQuestion(),
        ),
      ],
    );
  }
}

class MultiChoiceQuestion extends StatelessWidget {
  const MultiChoiceQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> options =
        Provider.of<QuizViewModel>(context).state.options;
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16.0,
      children: [
        Option(options[0]),
        Option(options[1]),
        Option(options[2]),
        Option(options[3]),
      ],
    );
  }
}

class Option extends StatelessWidget {
  final String label;

  const Option(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: GestureDetector(
        onTap: () {
          Provider.of<QuizViewModel>(context, listen: false).onTap(label);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 8.0,
          children: [
            Icon(Icons.radio_button_off),
            Text(
              label,
              selectionColor: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}
