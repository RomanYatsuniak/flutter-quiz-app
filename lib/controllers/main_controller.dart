import 'package:get/get.dart';
import './../models/question_model.dart';

class Controller extends GetxController {
  var successAnswers = 0.obs;
  var currentQuestionNumber = 1.obs;
  var quizzLength = 0.obs;
  var questions = <QuestionModel>[
    QuestionModel(
      questionText: 'What is the first letter of alphabet?',
      answers: ['A', 'B', 'C', 'Z'],
      rightAnswer: 'A',
    ),
    QuestionModel(
      questionText: 'What is the capital of the USA?',
      answers: ['NY', 'Washington', 'LA', 'LV'],
      rightAnswer: 'Washington'
    ),
    QuestionModel(
      questionText: 'What is the second month in the year?',
      answers: ['june', 'july', 'september', 'february'],
      rightAnswer: 'february'
    )
  ].obs;

  @override
  onInit() {
    super.onInit();
    this.quizzLength.value = this.questions.length;
  }

  getNextQuestion() => {
    this.currentQuestionNumber++
  };

  addPoint() => {
    this.successAnswers++
  };

  restartQuizz() => {
    this.successAnswers.value = 0,
    this.currentQuestionNumber.value = 1,
  };
}
