import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/quiz/start_quiz_screen.dart';
class QuizNumberPage extends StatelessWidget {
  const QuizNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: "Quiz"),
        body: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: (){
                    Get.to(DemoQuizScreen());
                  },
                  child: QuizListContainer(title: "Quiz 1")),
              QuizListContainer(title: "Quiz 2"),
              QuizListContainer(title: "Quiz 3"),
              QuizListContainer(title: "Quiz 4"),
            ],
          ),
        ),
    );
  }
}
