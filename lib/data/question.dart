class Question {
  final int id;
  final String question;
  final List<String> options;
  final String answer;

  Question(
      {required this.id,
      required this.question,
      required this.options,
      required this.answer})
      : assert(options.contains(answer), 'Answer must be in the option');
}
