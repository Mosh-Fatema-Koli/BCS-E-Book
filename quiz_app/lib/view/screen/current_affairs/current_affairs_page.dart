import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/ebook/quiz_details_page.dart';

import '../../../controller/learn/subjcet_controller.dart';
import '../learnPage/lesson_list_page.dart';
import 'current_affairs_details_page.dart';

class CurrentAffairsPage extends StatelessWidget {
  final _controller = Get.put(SubjcetController());

  CurrentAffairsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: 'Select Your Current Affairs'),
      body: ListView.builder(
        itemCount: _controller.currentAffairs.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(
                () => CurrentAffairsDetailsPage(
                  endPoint: _controller.currentAffairs[index].endpoint,
                  subjectName: _controller.currentAffairs[index].name,
                ),
              );
            },
            child: subjectListContainer(
              title: _controller.currentAffairs[index].name,
            ),
          );
        },
      ),
    );
  }
}
