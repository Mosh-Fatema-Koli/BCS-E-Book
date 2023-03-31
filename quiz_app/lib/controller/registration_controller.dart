import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/api/api_urls.dart';
import 'package:quiz_app/global/helpers.dart';

import '../api/api_helper.dart';
import '../global/app_constants.dart';
import '../model/login_model.dart';
import '../view/screen/homepage.dart';
import 'global_controller.dart';

class RegisterationController extends GetxController {
  final nameController = TextEditingController();
  final phonenumberController = TextEditingController();
  final imageController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final pickedImage = "".obs;
  final isRegistering = false.obs;
  final globalController = Get.find<GlobalController>();

  registerWithEmail() async {
    isRegistering.value = true;
    var request = http.MultipartRequest("POST", Uri.parse(ApiUrl.register));
    File file = File(pickedImage.value);
    var fileStream = http.ByteStream(file.openRead()..cast());
    var fileLength = await file.length();
    var fileFile = http.MultipartFile('image', fileStream, fileLength, filename: basename(file.path));
    request.fields["name"] = nameController.text;
    request.fields["number"] = phonenumberController.text;
    request.fields["email"] = emailController.text;
    request.fields["password"] = passwordController.text;
    request.fields["password_confirmation"] = confirmPasswordController.text;
    request.files.add(fileFile);
    var response = await request.send();
    response.stream.transform(utf8.decoder).listen(
      (event) {
        globalController.logger.d(event);
        Future.delayed(
          const Duration(seconds: 2),
          () {
            if (response.statusCode != 200) {
              errorToast(event);
            }
          },
        );
      },
    );
    if (response.statusCode == 200) {
      loginWithEmail();
    } else {
      isRegistering.value = false;
      errorToast("Something went wrong!");
    }
  }

  loginWithEmail() async {
    Map<String, String> body = {
      "number": phonenumberController.text,
      "password": passwordController.text,
    };
    var response = await generalPost(url: ApiUrl.login, body: body);
    if (response == null) {
      errorToast("Authorization Error");
      return;
    }
    final userLoginModel = loginModelFromJson(response.body);
    if (userLoginModel.message == "Login Successfull") {
      globalController.box.put(loggedUser, response.body);
      globalController.box.put(loggedToken, userLoginModel.token);
      globalController.box.put(loggedStatus, true);
      successToast("Registration Complete");
      Get.offAll(() => Homepage());
    }
  }

  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      File file = File(result.files.single.path!);
      pickedImage.value = file.path;
    }
  }
}
