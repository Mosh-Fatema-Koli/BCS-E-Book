import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/api/api_helper.dart';
import 'package:quiz_app/api/api_urls.dart';
import 'package:quiz_app/view/screen/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../global/app_constants.dart';
import '../global/helpers.dart';
import '../model/login_model.dart';
import 'global_controller.dart';

class LoginController extends GetxController {
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();
  var isLogginIn = false.obs;
  final globalController = Get.find<GlobalController>();

  loginWithEmail() async {
    isLogginIn.value = true;
    Map<String, String> body = {
      "number": phonenumberController.text,
      "password": passwordController.text,
    };
    var response = await generalPost(url: ApiUrl.login, body: body);
    if (response == null) {
      errorToast("Authorization Error");
      isLogginIn.value = false;
      return;
    }
    final userLoginModel = loginModelFromJson(response.body);
    if (userLoginModel.message == "Login Successfull") {
      globalController.box.put(loggedToken, userLoginModel.token);
      globalController.box.put(loggedStatus, true);
      Get.offAll(() => Homepage());
    }
  }
}
