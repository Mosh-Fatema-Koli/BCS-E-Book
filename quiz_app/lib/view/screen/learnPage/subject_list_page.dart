import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/controller/base_controller.dart';
import 'package:quiz_app/generated/assets.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/learnPage/lesson_page.dart';




class SubjectListPage extends StatelessWidget with BaseController{
  SubjectListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: 'Select Your Subject'),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: subectMenu(),
                        ),
                        SizedBox(
                          height: 20,
                        )

                      ],
                    )
                  ),
                ),

      ),
    );
  }
  Widget subectMenu(){
    return ListView.builder(
      itemCount: selectSubjectC.subjectList.length,
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {

      return GestureDetector(
        onTap: (){



          if (index ==0){
            Get.to(LessonListPage(subjectName: "Bangla"));
          }else if (index == 1) {
            Get.to(LessonListPage(subjectName: "English"));

          }
          else if (index == 2) {
            Get.to(LessonListPage(subjectName: "Math"));
          }
          },
        child: subjectListContainer(
          title: "${selectSubjectC.subjectList[index].name}"
        )

        /**  Container(
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: HexColor("#E8F6F9"),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(Assets.subject,height: 30,width: 30,)),
              SizedBox(
                width: 10,
              ),
              Text("${selectSubjectC.subjectList[index].name}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)
              )],
          ),
        )**/
      );
    },);
  }
}


