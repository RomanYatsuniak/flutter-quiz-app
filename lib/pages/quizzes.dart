import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './../controllers/main_controller.dart';

class QuizzPage extends StatelessWidget {
  QuizzPage({Key? key}) : super(key: key);
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => c.quizzes.length < 1
            ? Text('No quizzes')
            : ListView.separated(
              separatorBuilder: (BuildContext context, int index) => Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      '${c.quizzes[index].quizName}',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  );
                },
                itemCount: c.quizzes.length,
              ),
      ),
    );
  }
}
