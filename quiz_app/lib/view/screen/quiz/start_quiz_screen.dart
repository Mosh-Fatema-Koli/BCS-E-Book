import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/controller/quiz/demo_quiz_controller.dart';
import 'package:quiz_app/view/components/subject_related_widget.dart';
import 'package:quiz_app/view/screen/quiz/scorePage.dart';

import '../../components/global_appbar_widget.dart';

class DemoQuizScreen extends StatelessWidget {
  final _controller = Get.put(DemoQuizController());

  DemoQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(
        title: "Quiz Start",
        time: Obx(() {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                _controller.countdown.value != 0
                    ? _controller.countdown.value < 10
                        ? '00:0${_controller.countdown.value}'
                        : '00:${_controller.countdown.value}'
                    : 'Times Up',
                style: TextStyle(
                  color: _controller.countdown.value <= 3 ? Colors.red : Colors.black,
                ),
              ),
            ),
          );
        }),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 height: 50,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 2,),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(child: Text("QUESTION 10/20",style: TextStyle(fontSize: 20),)),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                    height: 200,
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
                      padding: const EdgeInsets.all(20),
                      child: Center(child: Text("I am currently living in New Delhi. - You will have to identify the noun in each of the noun objective questions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),textAlign: TextAlign.center,)),
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
                          QuizListContainer(title: "in"),
                          QuizListContainer(title: "currently"),
                          QuizListContainer(title: "New Delhi"),
                          QuizListContainer(title: "living"),
                        ],
                      ),
                    ),
                  ),

                ),
                SizedBox(
                  height: 20,
                ),

                GestureDetector(
                  onTap: (){

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
                    child: GestureDetector(
                        onTap: (){
                        Get.to(ScorePage())  ;
                        },
                        child: const Text("NEXT",style: TextStyle(fontSize: 16,color: Colors.white),)),
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
    );
  }
}
