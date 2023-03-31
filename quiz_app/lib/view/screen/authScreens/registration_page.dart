import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/global/app_assets.dart';
import 'package:quiz_app/global/components/container_sizes.dart';
import 'package:quiz_app/global/helpers.dart';
import 'package:quiz_app/global/styles/textstyle.dart';
import 'package:quiz_app/view/components/button_widget.dart';
import 'package:quiz_app/view/components/textbox_widget.dart';
import 'package:quiz_app/view/screen/authScreens/login_screen.dart';
import 'package:quiz_app/view/screen/profile_page.dart';

import '../../../controller/registration_controller.dart';

class RegistrationPage extends StatelessWidget {
  RegisterationController controller = Get.put(RegisterationController());

  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Colors.transparent,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
              const SizedBox(height: 70),
              InkWell(
                onTap: () {
                  controller.pickFile();
                },
                child: Obx(
                  () {
                    return ContainerClass.registrationImage(
                      borderWidth: 4.0,
                      borderRadius: 300.0,
                      borderColor: HexColor("#545BAF"),
                      image: controller.pickedImage.value == "" ? null : controller.pickedImage.value,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              TextboxWidget1(
                title: 'Name'.tr,
                controller: controller.nameController,
                hintText: 'Enter your Name.'.tr,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 10),
              TextboxWidget1(
                title: 'Phone Number'.tr,
                controller: controller.phonenumberController,
                hintText: 'Enter your phone number'.tr,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 10),
              TextboxWidget1(
                title: "Email".tr,
                controller: controller.emailController,
                hintText: "Enter your email".tr,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              TextboxWidget(
                title: "Password".tr,
                controller: controller.passwordController,
                hintText: "Enter your password".tr,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              const SizedBox(height: 10),
              TextboxWidget(
                title: "Confirm Password".tr,
                controller: controller.confirmPasswordController,
                hintText: "Enter your password".tr,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  if (controller.nameController.text.isEmpty ||
                      controller.phonenumberController.text.isEmpty ||
                      controller.emailController.text.isEmpty ||
                      controller.passwordController.text.isEmpty ||
                      controller.confirmPasswordController.text.isEmpty ||
                      controller.pickedImage.value == "") {
                    errorToast("Fields can not be empty");
                  } else {
                    controller.registerWithEmail();
                  }
                },
                child: Obx(
                  () {
                    return controller.isRegistering.value
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : button(
                            buttonName: "Register",
                          );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have an account?'.tr,
                    style: CustomtextStyle.maintext2.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => LoginPage());
                    },
                    child: Text(
                      'Sign in'.tr,
                      style: CustomtextStyle.maintext2.copyWith(fontSize: 16.sp, color: HexColor("#2E2E54"), fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
