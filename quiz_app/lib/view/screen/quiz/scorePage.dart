
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/homepage.dart';
import 'package:quiz_app/view/screen/quiz/reviewAns.dart';
import 'package:quiz_app/view/screen/quiz/start_quiz_screen.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: "Good Job",),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: 20,
                ),
                Card(

                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            HexColor("#323361"),
                            HexColor("#2E2E54"),

                          ],
                        ),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Your Score: 12",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            HexColor("#323361"),
                            HexColor("#2E2E54"),

                          ],
                        ),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          QuizListContainer(title: "Total Question: 20"),
                          QuizListContainer(title: "Correct Answer: 10"),
                          QuizListContainer(title: "Wrong Answer: 5"),
                          QuizListContainer(title: "Negetive Marks: 2"),
                        ],
                      ),
                    ),
                  ),

                ),
                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(DemoQuizScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),

                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              HexColor("#323361"),
                              HexColor("#2E2E54"),

                            ],
                          ),
                        ),
                        child: Text("Quiz \nAgain",style: TextStyle(fontSize: 16,color: Colors.white),),


                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(ReviewScore());
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),

                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              HexColor("#323361"),
                              HexColor("#2E2E54"),

                            ],
                          ),
                        ),
                        child: Text("Review \nAnswer",style: TextStyle(fontSize: 16,color: Colors.white),),


                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                                Get.to(Homepage());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          HexColor("#323361"),
                          HexColor("#2E2E54"),

                        ],
                      ),
                    ),
                    child: Text("Back To Home",style: TextStyle(fontSize: 16,color: Colors.white),),


                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    ) ;
  }
}
