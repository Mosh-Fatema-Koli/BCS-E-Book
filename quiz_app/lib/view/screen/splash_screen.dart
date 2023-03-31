import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/controller/global_controller.dart';
import 'package:quiz_app/global/app_assets.dart';
import 'package:quiz_app/global/styles/app_colors.dart';
import 'package:quiz_app/view/screen/homepage.dart';

import '../../global/app_constants.dart';
import 'authScreens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  final _controller = Get.put(GlobalController());

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      getLoggedStatus();
    });
    return Scaffold(
      body: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          color: HexColor("#EFF2F9"),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 9,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
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
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            AppAssets.splash,
                            width: 80.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    backgroundColor: AppColors.bottomNavBlueColor,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  getLoggedStatus() {
    final isLoggedIn = _controller.box.get(loggedStatus) ?? false;
    if (isLoggedIn) {
      Get.offAll(() => Homepage());
    } else {
      Get.offAll(() => LoginPage());
    }
  }
}
