import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/learnPage/pdfPage.dart';
import 'package:quiz_app/view/screen/quiz/start_quiz_screen.dart';

class LessonListPage extends StatefulWidget {
  final String subjectName;

  LessonListPage({super.key, required this.subjectName});

  @override
  State<LessonListPage> createState() => _LessonListPageState();
}

class _LessonListPageState extends State<LessonListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: "${widget.subjectName}"),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Expanded(flex: 1, child: carouselSliderWidget()),
            if (widget.subjectName == 'Bangla')
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
                                  Get.to(
                                    PdfPage(
                                      subjectName: "Noun PDF",
                                    ),
                                  );
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (_) => Bangla1stExam(

                                  //         )));
                                  // Get.to(LessionListPage(subjectName: "English"));
                                },
                                child: subjectListContainer(title: "Noun")),
                            subjectListContainer(title: "Pronoun"),
                            subjectListContainer(title: "Verb"),
                            subjectListContainer(title: "Adverb"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            if (widget.subjectName == 'English')
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
                                child: subjectListContainer(title: "Noun")),
                            subjectListContainer(title: "Pronoun"),
                            subjectListContainer(title: "Verb"),
                            subjectListContainer(title: "Adverb"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            if (widget.subjectName == 'Newspaper')
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
                                child: subjectListContainer(title: "PROTHOM ALO")),
                            subjectListContainer(title: "DAILY STAR"),
                            subjectListContainer(title: "ITTEFAQ"),
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
