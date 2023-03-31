import 'package:get/get.dart';
import 'package:quiz_app/api/api_helper.dart';
import 'package:quiz_app/api/api_urls.dart';
import 'package:quiz_app/view/screen/bank/bank_page.dart';
import 'package:quiz_app/view/screen/current_affairs/current_affairs_page.dart';
import 'package:quiz_app/view/screen/ebook/ebook_page.dart';
import 'package:quiz_app/view/screen/learnPage/lesson_page.dart';
import 'package:quiz_app/view/screen/learnPage/subject_list_page.dart';
import 'package:quiz_app/view/screen/model_test/model_test.dart';
import 'package:quiz_app/view/screen/quiz/subject_of_quiz.dart';
import 'package:quiz_app/view/screen/suject_xm/suject_exam.dart';

import '../generated/assets.dart';
import '../global/app_constants.dart';
import '../model/grid_item_model.dart';
import '../model/user_model.dart';
import '../view/screen/questionBankPage/question_bank_list_page.dart';
import '../view/screen/quiz/start_quiz_screen.dart';
import '../view/screen/vocabulary/vocabulary_page.dart';
import 'global_controller.dart';

class HomeController extends GetxController {
  final globalController = Get.find<GlobalController>();
  var name = "".obs;
  var imageUrl = "".obs;
  final gridItems = [
    GridItemModel(
        name: 'LEARN',
        asset: Assets.iconLearn,
        onPressed: () {
          Get.to(() => SubjectListPage());
        }),
    GridItemModel(
        name: 'BANK',
        asset: Assets.iconQuestionBank,
        onPressed: () {
          Get.to(() => BankPage());
        }),
    GridItemModel(
        name: 'QUESTION BANK',
        asset: Assets.iconQuestionBankone,
        onPressed: () {
          Get.to(() => QuestionBankPage());
        }),
    GridItemModel(
        name: 'VOCABULARY',
        asset: Assets.iconVocabulary,
        onPressed: () {
          Get.to(() => VocabularyPage());
        }),
    GridItemModel(
        name: 'CURRENT AFFAIRS',
        asset: Assets.iconCurrentAffairs,
        onPressed: () {
          Get.to(() => CurrentAffairsPage());
        }),
    GridItemModel(
        name: 'NEWS PAPER',
        asset: Assets.iconNewspaper,
        onPressed: () {
          Get.to(LessonListPage(
            subjectName: 'Newspaper',
          ));
        }),
    GridItemModel(
        name: 'E-BOOK',
        asset: Assets.iconEBook,
        onPressed: () {
          Get.to(() => EbookPage());
        }),
    GridItemModel(name: 'SUBJECT EXAM', asset: Assets.iconLearn, onPressed: () {
      Get.to(() =>SubjcetExam());
    }),
    GridItemModel(
        name: 'QUIZ',
        asset: Assets.iconLearn,
        onPressed: () {
          Get.to(() => QuizSubjectPage());
        }),
    GridItemModel(name: 'MODEL TEST', asset: Assets.iconLearn, onPressed: () {

      Get.to(() =>ModelTest());
    }),
  ];

  getUserInfo() async {
    var response = await tokenBasedGet(url: ApiUrl.user);
    if (response != null) {
      globalController.box.put(loggedUser, response.body);
      final userModel = userModelFromJson(response.body);
      name.value = userModel.name;
      imageUrl.value = userModel.image.toString();
    }
  }

  @override
  void onInit() {
    getUserInfo();
    super.onInit();
  }
}
