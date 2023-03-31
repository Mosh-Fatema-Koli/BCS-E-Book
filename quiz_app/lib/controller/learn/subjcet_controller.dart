import 'package:get/get.dart';
import 'package:quiz_app/model/learn/subject_page_model.dart';

class SubjcetController extends GetxController {
  final subjectList = [
    Subject(
      name: " BANGLA",
      subItems: [
        SubItems(name: "BANGLA GRAMMAR", endpoint: "learn_bangla_grammer"),
        SubItems(name: "BANGLA LITERATURE", endpoint: "learn_bangla_literature"),
      ],
    ),
    Subject(
      name: " ENGLISH",
      subItems: [
        SubItems(name: "ENGLISH GRAMMAR", endpoint: "learn_english_grammer"),
        SubItems(name: "ENGLISH LITERATURE", endpoint: "learn_english_literature"),
      ],
    ),
    Subject(
      name: " MATH",
      subItems: [
        SubItems(name: "ARITHMETIC", endpoint: "learn_arithmetic"),
        SubItems(name: "ALGEBRA", endpoint: "learn_algebra"),
        SubItems(name: "GEOMETRY", endpoint: "learn_geometry"),
      ],
    ),
    Subject(
      name: " SCIENCE",
      subItems: [
        SubItems(name: "BIOLOGY", endpoint: "learn_biology"),
        SubItems(name: "PHYSICS", endpoint: "learn_physics"),
        SubItems(name: "CHEMISTRY", endpoint: "learn_chemistry"),
      ],
    ),
    Subject(
      name: " AFFAIRS",
      subItems: [
        SubItems(name: "INTERNATIONAL AFFAIRS", endpoint: "learn_international_affairs"),
        SubItems(name: "BANGLADESH AFFAIRS", endpoint: "learn_bangladesh_affairs"),
      ],
    ),
    Subject(
      name: " OTHERS",
      subItems: [
        SubItems(name: "GEOGRAPHY", endpoint: "learn_geography_environments"),
        SubItems(name: "COMPUTER ICT", endpoint: "learn_computer_ict"),
        SubItems(name: "MENTAL SKILL", endpoint: "learn_mental_skill"),
        SubItems(name: "ETHICS VALUE", endpoint: "learn_ethics_value_goverance"),
      ],
    ),
  ];

  final ebookList = [
    SubItems(name: "Nine Ten", endpoint: "ebook_nine_ten"),
    SubItems(name: "Eight", endpoint: "ebook_eight"),
    SubItems(name: "Seven", endpoint: "ebook_seven"),
  ];

  final currentAffairs = [
    SubItems(name: "Bangladesh", endpoint: "current_affairs_bangladesh"),
    SubItems(name: "International", endpoint: "current_affairs_international"),
    SubItems(name: "Miscellaneous", endpoint: "current_affairs_miscellaneous"),
  ];

  final bank = [
    SubItems(name: "English", endpoint: "bank_english"),
    SubItems(name: "Bangla", endpoint: "bank_bangla"),
    SubItems(name: "Math", endpoint: "bank_math"),
    SubItems(name: "Computer", endpoint: "bank_computer"),
  ];

  final vocabulary = [
    SubItems(name: "Barrons 333", endpoint: "voca_barron333"),
    SubItems(name: "Barrons 800", endpoint: "voca_barron800"),
    SubItems(name: "Word Smart 1", endpoint: "voca_word_smart_1"),
    SubItems(name: "Word Smart 2", endpoint: "voca_word_smart_2"),
    SubItems(name: "Manhattan", endpoint: "voca_manhttan"),
    SubItems(name: "Mangoosh", endpoint: "voca_magoosh"),
    SubItems(name: "Daily Editorial", endpoint: "voca_daily_editorail"),
  ];
}
