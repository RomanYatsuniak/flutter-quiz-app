import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './../controllers/main_controller.dart';

class QuestionPage extends StatelessWidget {
  // final Controller c = Get.put(Controller());
  Widget build(BuildContext context) {
    return Text('f');
  }
  // makeAnswer(userAnswer) {
  //   if (userAnswer ==
  //       c.questions[c.currentQuestionNumber.value - 1].rightAnswer) {
  //     c.addPoint();
  //   }

  //   c.getNextQuestion();
  //   if (c.currentQuestionNumber > c.quizzLength.value) {
  //     print('${c.quizzLength} - quizz');
  //     Get.toNamed('/result');
  //   } else {
  //     Get.toNamed('/test?question=${c.currentQuestionNumber}');
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     color: Theme.of(context).primaryColor,
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Obx(() => Text('${c.questions[0].questionText}',
  //             style: Theme.of(context).textTheme.headline1)),
  //         SizedBox(height: 30),
  //         Column(children: <Widget>[
  //           Column(
  //             children: <Widget>[
  //               Container(
  //                 child: ElevatedButton(
  //                     onPressed: () => makeAnswer(c
  //                         .questions[c.currentQuestionNumber.value - 1]
  //                         .answers[0]),
  //                     child: Text(
  //                         '${c.questions[c.currentQuestionNumber.value - 1].answers[0]}')),
  //                 width: double.infinity,
  //                 margin:
  //                     EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //               ),
  //               Container(
  //                 child: ElevatedButton(
  //                     onPressed: () => makeAnswer(c
  //                         .questions[c.currentQuestionNumber.value - 1]
  //                         .answers[1]),
  //                     child: Text(
  //                         '${c.questions[c.currentQuestionNumber.value - 1].answers[1]}')),
  //                 width: double.infinity,
  //                 margin:
  //                     EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //               ),
  //               Container(
  //                 child: ElevatedButton(
  //                     onPressed: () => makeAnswer(c
  //                         .questions[c.currentQuestionNumber.value - 1]
  //                         .answers[2]),
  //                     child: Text(
  //                         '${c.questions[c.currentQuestionNumber.value - 1].answers[2]}')),
  //                 width: double.infinity,
  //                 margin:
  //                     EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //               ),
  //               Container(
  //                 child: ElevatedButton(
  //                     onPressed: () => makeAnswer(c
  //                         .questions[c.currentQuestionNumber.value - 1]
  //                         .answers[3]),
  //                     child: Text(
  //                         '${c.questions[c.currentQuestionNumber.value - 1].answers[3]}')),
  //                 width: double.infinity,
  //                 margin:
  //                     EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //               ),
  //             ],
  //           )
  //         ]),
  //       ],
  //     ),
  //   );
  // }
}
