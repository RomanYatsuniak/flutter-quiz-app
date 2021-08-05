import 'package:flutter/material.dart';
import 'package:quizz_app/pages/question.dart';
import './pages/start.dart';
import './pages/result.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => StartPage()),
        GetPage(name: '/test', page: () => Question()),
        GetPage(name: '/result', page: () => Result()),
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
