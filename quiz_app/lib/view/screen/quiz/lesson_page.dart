import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/quiz/quizNumber.dart';
import 'package:quiz_app/view/screen/quiz/start_quiz_screen.dart';
class QuizLession extends StatefulWidget {
  final String subjectName;
  const QuizLession({Key? key,required this.subjectName}) : super(key: key);

  @override
  State<QuizLession> createState() => _QuizLessionState();
}

class _QuizLessionState extends State<QuizLession> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appbarWidget(title: "${widget.subjectName}"),
      body:  Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            // Expanded(flex: 1, child: carouselSliderWidget()),
            if(widget.subjectName == 'Bangla')
              Expanded(
                // flex: 3,
                child: Visibility(
                  visible: widget.subjectName == 'Bangla' ? true : false,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {

                                  Get.to(QuizNumberPage());
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (_) => Bangla1stExam(

                                  //         )));
                                  // Get.to(LessionListPage(subjectName: "English"));
                                },
                                child: subjectListContainer(
                                    title: "A")),

                            subjectListContainer(title: "B"),

                            subjectListContainer(title: "C"),
                            subjectListContainer(title: "D"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            if(widget.subjectName == 'English')
              Expanded(
                // flex: 3,
                child: Visibility(
                  visible: widget.subjectName == 'English' ? true : false,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {

                                  Get.to(DemoQuizScreen());
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (_) => Bangla1stExam(

                                  //         )));
                                  // Get.to(LessionListPage(subjectName: "English"));
                                },
                                child: subjectListContainer(
                                    title: "Noun")),
                            SizedBox(
                              height: 10,
                            ),
                            subjectListContainer(title: "Pronoun"),
                            SizedBox(
                              height: 10,
                            ),
                            subjectListContainer(title: "Verb"),
                            SizedBox(
                              height: 10,
                            ),
                            subjectListContainer(title: "Adverb"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            if(widget.subjectName == 'Newspaper')
              Expanded(
                // flex: 3,
                child: Visibility(
                  // visible: widget.subjectName == 'Newspaper' ? true : false,
                  child: Container(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (_) => Bangla1stExam(

                                  //         )));
                                  // Get.to(LessionListPage(subjectName: "English"));
                                },
                                child: subjectListContainer(
                                    title: "PROTHOM ALO")),
                            SizedBox(
                              height: 10,
                            ),
                            subjectListContainer(title: "DAILY STAR"),
                            SizedBox(
                              height: 10,
                            ),
                            subjectListContainer(title: "ITTEFAQ"),
                            SizedBox(
                              height: 10,
                            ),
                            subjectListContainer(title: "BONIK BARTA"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )

          ],
        ),
      ),
    );
  }
}