import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/ebook/quiz_details_page.dart';

import '../../../controller/learn/subjcet_controller.dart';
import '../learnPage/lesson_list_page.dart';

class EbookPage extends StatelessWidget {
  final _controller = Get.put(SubjcetController());

  EbookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: 'Select Your Ebook'),
      body: ListView.builder(
        itemCount: _controller.ebookList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(
                () => QuizDetailsPage(
                  endPoint: _controller.ebookList[index].endpoint,
                  subjectName: _controller.ebookList[index].name,
                ),
              );
            },
            child: subjectListContainer(
              title: _controller.ebookList[index].name,
            ),
          );
        },
      ),
    );
  }
}
