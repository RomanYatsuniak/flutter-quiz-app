import 'package:get/get.dart';
import 'package:quizz_app/models/quizz_model.dart';
import './../models/question_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:async';
import 'dart:convert';

class Controller extends GetxController {
  var successAnswers = 0.obs;
  var currentQuestionNumber = 1.obs;
  var quizzLength = 0.obs;
  var quizzes = <Quizz>[].obs;
  var questions = <Question>[].obs;

  @override
  onInit() async {
    await getAllQuizzes();
    super.onInit();

    // this.quizzLength.value = this.quizzes.length;
  }

  getAllQuizzes() async {
    var url = Uri.parse('http://localhost:1337/quizzes');
    var response = await http.get(url);
    this.quizzes.value = (json.decode(response.body) as List)
        .map((i) => Quizz.fromJson(i))
        .toList();
  }

  // getQuestionsByQuizzId(quizId) async {
  //   var url = Uri.parse('http://localhost:1337/questions/$quizId');
  //   var response = awai  t http.get(url);
  //   this.questions.value = response.body as List<Question>;
  // }

  getNextQuestion() => {this.currentQuestionNumber++};

  addPoint() => {this.successAnswers++};

  restartQuizz() => {
        this.successAnswers.value = 0,
        this.currentQuestionNumber.value = 1,
      };
}
