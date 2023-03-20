import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class DemoQuizController extends GetxController {
  static DemoQuizController get to => Get.find();

  var countdown = 10.obs;
  var isRunning = false.obs;

  final player = AudioPlayer();

  void start() async {
    isRunning.value = true;
    player.play(AssetSource('sounds/tiktik.mp3'));
    while (countdown.value > 0) {
      await Future.delayed(const Duration(seconds: 1));
      countdown.value--;
      if (countdown.value == 0) {
        player.stop();
        player.play(AssetSource('Wrong.wav'));
      }
    }
    isRunning.value = false;
  }

  void reset() {
    countdown.value = 10;
    player.stop();
    isRunning.value = false;
  }

@override
  void onInit() {
    super.onInit();
    start();
  }

/*setPlayer() async {
    await player.setSource(AssetSource('assets/sounds/tiktik.mp3'));
  }*/
}
