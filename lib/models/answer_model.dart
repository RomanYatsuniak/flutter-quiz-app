import './question_model.dart';

class Answer {
  final int id;
  final String answerText;
  final bool isTrue;
  final Question question;
  final String published_at;
  final String created_at;
  final String updated_at;

  Answer(
      {required this.id,
      required this.answerText,
      required this.isTrue,
      required this.question,
      required this.published_at,
      required this.created_at,
      required this.updated_at
      });
}
