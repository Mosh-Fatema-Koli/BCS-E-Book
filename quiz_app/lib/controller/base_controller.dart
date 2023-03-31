import 'package:get/get.dart';
import 'package:quiz_app/controller/learn/subjcet_controller.dart';
import 'package:quiz_app/controller/quiz/sujcet_quiz_controller.dart';

class BaseController {
  final selectSubjectC = Get.put(SubjcetController());
  final selectQuizSubjectC = Get.put(QuizSubjectController());
}
