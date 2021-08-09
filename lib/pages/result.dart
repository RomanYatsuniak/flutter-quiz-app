import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './../controllers/main_controller.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key}) : super(key: key);
  final Controller c = Get.put(Controller());

  startQuizzAgain() {
    c.restartQuizz();
    Get.toNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Your result is - ${c.successAnswers}',
                style: Theme.of(context).textTheme.headline1),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: ElevatedButton(
                onPressed: this.startQuizzAgain,
                child: Text('Play again'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
