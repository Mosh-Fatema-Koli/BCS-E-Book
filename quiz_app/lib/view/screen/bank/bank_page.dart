import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/ebook/quiz_details_page.dart';

import '../../../controller/learn/subjcet_controller.dart';
import '../learnPage/lesson_list_page.dart';
import 'bank_details_page.dart';

class BankPage extends StatelessWidget {
  final _controller = Get.put(SubjcetController());

  BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: 'Select Your Bank'),
      body: ListView.builder(
        itemCount: _controller.bank.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(
                () => BankDetailsPage(
                  endPoint: _controller.bank[index].endpoint,
                  subjectName: _controller.bank[index].name,
                ),
              );
            },
            child: subjectListContainer(
              title: _controller.bank[index].name,
            ),
          );
        },
      ),
    );
  }
}
