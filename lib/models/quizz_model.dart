import './question_model.dart';

class Quizz {
  final int id;
  final String quizName;
  final String published_at;
  final String created_at;
  final String updated_at;
  final List<dynamic> questions;

  Quizz(
      {required this.id,
      required this.quizName,
      required this.published_at,
      required this.created_at,
      required this.updated_at,
      required this.questions});

  factory Quizz.fromJson(json) {
    return Quizz(
        id: json["id"],
        quizName: json["quizName"],
        published_at: json["published_at"],
        created_at: json["created_at"],
        updated_at: json["updated_at"],
        questions: json["questions"]);
  }
}
