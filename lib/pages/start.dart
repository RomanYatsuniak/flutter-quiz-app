import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  startQuizz() async {
    Get.toNamed('/test?question=1');
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Hi! This is Simple Quizz App',
          style: Theme.of(context).textTheme.headline1,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: startQuizz,
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).accentColor,
            ),
            child: Container(
              width: 240.0,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Start Quizz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
