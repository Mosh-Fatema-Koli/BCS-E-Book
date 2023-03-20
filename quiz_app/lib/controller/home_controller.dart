import 'package:get/get.dart';
import 'package:quiz_app/view/screen/learnPage/lesson_page.dart';
import 'package:quiz_app/view/screen/learnPage/subject_list_page.dart';
import 'package:quiz_app/view/screen/quiz/subject_of_quiz.dart';


import '../generated/assets.dart';
import '../model/grid_item_model.dart';
import '../view/screen/quiz/start_quiz_screen.dart';


class HomeController extends GetxController {
  final gridItems = [
    GridItemModel(
        name: 'LEARN',
        asset: Assets.iconLearn,
        onPressed: () {
          Get.to(() => SubjectListPage());
        }),
    GridItemModel(name: 'BANK', asset: Assets.iconQuestionBank, onPressed: () {}),
    GridItemModel(name: 'QUESTION BANK', asset: Assets.iconQuestionBankone, onPressed: () {}),
    GridItemModel(name: 'VOCABULARY', asset: Assets.iconVocabulary, onPressed: () {}),
    GridItemModel(name: 'CURRENT AFFAIRS', asset: Assets.iconCurrentAffairs, onPressed: () {}),
    GridItemModel(
        name: 'NEWS PAPER',
        asset: Assets.iconNewspaper,
        onPressed: () {
          Get.to(LessonListPage(
            subjectName: 'Newspaper',
          ));
        }),
    GridItemModel(name: 'E-BOOK', asset: Assets.iconEBook, onPressed: () {}),
    GridItemModel(name: 'SUBJECT EXAM', asset: Assets.iconLearn, onPressed: () {}),
    GridItemModel(
        name: 'QUIZ',
        asset: Assets.iconLearn,
        onPressed: () {
          Get.to(() => QuizSubjectPage());
        }),
    GridItemModel(name: 'MODEL TEST', asset: Assets.iconLearn, onPressed: () {}),
  ];
}
