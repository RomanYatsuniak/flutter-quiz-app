class Question {
  final int? id;
  final int? quiz;
  final String? published_at;
  final String? created_at;
  final String? updated_at;
  final String? questionText;
  final List<String>? answers;
  final String? rightAnswer;

  Question(
    {
      this.id,
      this.quiz,
      this.published_at,
      this.created_at,
      this.updated_at,
      this.questionText,
      this.answers,
      this.rightAnswer
    }
  );
}
