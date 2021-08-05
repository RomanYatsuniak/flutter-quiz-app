class QuestionModel {
  final String questionText;
  final List<String> answers;
  final String rightAnswer;

  QuestionModel(
    {
      required this.questionText,
      required this.answers,
      required this.rightAnswer
    }
  );
}
