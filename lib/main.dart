import 'package:flutter/material.dart';
import 'package:quizz_app/pages/question.dart';
import './pages/start.dart';
import './pages/result.dart';
import './pages/quizzes.dart';
import 'package:get/get.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => StartPage()),
        GetPage(name: '/test', page: () => QuestionPage()),
        GetPage(name: '/result', page: () => ResultPage()),
        GetPage(name: '/quizzes', page: () => QuizzPage())
      ],
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        accentColor: Colors.blue[800],
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
      home: Container(
        color: Theme.of(context).primaryColor,
        child: StartPage(),
      ),
    );
  }
}
