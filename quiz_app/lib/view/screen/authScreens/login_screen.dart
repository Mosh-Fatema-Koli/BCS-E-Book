import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/controller/login_controller.dart';
import 'package:quiz_app/global/app_assets.dart';
import 'package:quiz_app/global/styles/textstyle.dart';
import 'package:quiz_app/view/components/button_widget.dart';
import 'package:quiz_app/view/components/textbox_widget.dart';
import 'package:quiz_app/view/screen/authScreens/registration_page.dart';

class LoginPage extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 100,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    AppAssets.splash,
                    width: 80.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextboxWidget1(
                        title: 'Number',
                        controller: loginController.phonenumberController,
                        hintText: 'Enter your phone number'.tr,
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 10),
                      TextboxWidget(
                        title: "Password".tr,
                        controller: loginController.passwordController,
                        hintText: "Enter your password".tr,
                        keyboardType: TextInputType.visiblePassword,
                        isPassword: true,
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          loginController.loginWithEmail();
                        },
                        child: Obx(
                          () => loginController.isLogginIn.value
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : button(
                                  buttonName: "Login",
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => RegistrationPage());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Don\'t have an account ?'.tr,
                              style: CustomtextStyle.maintext2,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Register'.tr,
                              style: CustomtextStyle.maintext2.copyWith(
                                fontSize: 14.sp,
                                color: HexColor("#2E2E54"),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget textField(String hinttext) {
  return Card(
    elevation: 3,
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: hinttext,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 20, bottom: 0),
        ),
      ),
    ),
  );
}
