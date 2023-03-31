import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/model/learn/subject_page_model.dart';
import 'package:quiz_app/view/screen/learnPage/lesson_details_page.dart';

import '../../components/global_appbar_widget.dart';
import '../../components/subject_related_widget.dart';

class LessonsListPage extends StatelessWidget {
  final Subject subject;

  const LessonsListPage({Key? key, required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: subject.name),
      body: ListView.builder(
        itemCount: subject.subItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(
                () => LessonDetailsPage(
                  endPoint: subject.subItems[index].endpoint,
                  subjectName: subject.subItems[index].name,
                ),
              );
            },
            child: subjectListContainer(
              title: subject.subItems[index].name,
            ),
          );
        },
      ),
    );
  }
}
