import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:quiz_app/global/app_constants.dart';
import 'package:quiz_app/view/screen/splash_screen.dart';

class GlobalController extends GetxController {
  final box = Hive.box(hiveBox);
  final logger = Logger();

  logout() {
    box.delete(loggedUser);
    box.delete(loggedToken);
    box.delete(loggedStatus);
    Get.offAll(() => SplashScreen());
  }
}
