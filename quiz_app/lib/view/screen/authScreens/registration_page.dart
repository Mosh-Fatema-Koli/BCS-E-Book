import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/global/app_assets.dart';
import 'package:quiz_app/global/components/container_sizes.dart';
import 'package:quiz_app/global/styles/textstyle.dart';
import 'package:quiz_app/view/components/button_widget.dart';
import 'package:quiz_app/view/components/textbox_widget.dart';
import 'package:quiz_app/view/screen/authScreens/login_screen.dart';
import 'package:quiz_app/view/screen/profile_page.dart';


import '../../../controller/registration_controller.dart';

class RegistrationPage extends StatelessWidget {

  RegisterationController registerationController = Get.put(RegisterationController());

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
              ContainerClass.circleContainerImage(
                borderWidth: 4.0,
                borderRadius: 300.0,
                //cliprrectBorderRadius: 105.0,
                image: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                //cliprrectImageHeight: 110.h,
                //cliprrectImageWidth: 123.w,


                borderColor:  HexColor("#545BAF"),
              ),
              const SizedBox(height: 20),
              TextboxWidget1(
                title: 'Name'.tr,
                controller: registerationController.nameController,
                hintText: 'Enter your Name.'.tr,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 10),
              TextboxWidget1(
                title: 'Phone Number'.tr,
                controller: registerationController.phonenumberController,
                hintText: 'Enter your phone number'.tr,
                keyboardType: TextInputType.phone,

              ),
              const SizedBox(height: 10),
              TextboxWidget1(
                title: "Email".tr,
                controller: registerationController.emailController,
                hintText: "Enter your email".tr,
                keyboardType: TextInputType.emailAddress,

              ),
              const SizedBox(height: 10),
              TextboxWidget(
                title: "Password".tr,
                controller: registerationController.passwordController,
                hintText: "Enter your password".tr,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              const SizedBox(height: 10),
              TextboxWidget(
                title: "Confirm Password".tr,
                controller: registerationController.confirmPasswordController,
                hintText: "Enter your password".tr,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              const SizedBox(height: 30),
              GestureDetector(
                  onTap: (){
                    registerationController.registerWithEmail();
                  },
                  child: button(buttonName: "Register", )),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                      style: CustomtextStyle.maintext2.copyWith(fontSize: 16.sp, color: HexColor("#2E2E54"),fontWeight:FontWeight.w600),
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
