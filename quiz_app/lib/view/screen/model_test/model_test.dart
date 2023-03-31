
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controller/sujective_xm/subjcetive.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';

class ModelTest extends StatelessWidget {
  ModelTest({Key? key}) : super(key: key);

  final subject = Get.put(SubController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: 'Select Your Suject'),
      body: Obx(() => subject.isLoaded.value
          ? Center(
        child: CircularProgressIndicator(),
      ) : ListView.builder(
        itemCount: subject.postList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {

            },
            child: subjectListContainer(
                title: subject.postList[index].subjectName.toString()

            ),
          );
        },
      ),
      ),



    );
  }
}
