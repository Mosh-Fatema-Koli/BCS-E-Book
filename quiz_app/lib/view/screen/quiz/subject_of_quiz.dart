import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controller/base_controller.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/learnPage/lesson_page.dart';
import 'package:quiz_app/view/screen/quiz/lesson_page.dart';


class QuizSubjectPage extends StatelessWidget with BaseController {

  QuizSubjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: 'QUIZ'),
      body:  Container(
        margin: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Expanded(
              flex: 3,
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 800,
                          child: subectMenu(),
                        )
                        ]

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
  Widget subectMenu(){
    return ListView.builder(
      itemCount: selectQuizSubjectC.quizSubjectList.length,
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {

        return GestureDetector(
            onTap: (){



              if (index ==0){
                Get.to(QuizLession(subjectName: "Bangla"));
              }else if (index == 1) {
                Get.to(QuizLession(subjectName: "English"));

              }
              else if (index == 2) {
                Get.to(QuizLession(subjectName: "Math"));
              }
            },
            child: subjectListContainer(
                title: "${selectQuizSubjectC.quizSubjectList[index].name}"
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






