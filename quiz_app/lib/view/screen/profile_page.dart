import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:intl/intl.dart';
import 'package:quiz_app/controller/profile_controller.dart';
import 'package:quiz_app/global/components/container_sizes.dart';
import 'package:quiz_app/view/components/button_widget.dart';
import 'package:quiz_app/view/components/textbox_widget.dart';
import 'package:quiz_app/view/screen/homepage.dart';

class ProfileScreen extends StatelessWidget {
  final _controller = Get.put(ProfileController());

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(
                  height: 70,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      HexColor("#323361"),
                      HexColor("#2E2E54"),

                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(child: const Text('PROFILE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,),
                    ContainerClass.circleContainerImage(
                      borderWidth: 4.0,
                      borderRadius: 300.0,
                      //cliprrectBorderRadius: 105.0,
                      image: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                      //cliprrectImageHeight: 110.h,
                      //cliprrectImageWidth: 123.w,


                      borderColor:  HexColor("#545BAF"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextboxWidget(
                      title: 'Name'.tr,
                      controller: _controller.nameController,
                      hintText: 'Enter your name.'.tr,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextboxWidget(
                      title: 'Email'.tr,
                      controller: _controller.emailController,
                      hintText: 'Enter your email address.'.tr,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    TextboxWidget(
                      title: 'Mobile Number'.tr,
                      controller: _controller.mobileController,
                      hintText: 'Enter your mobile number.'.tr,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    TextboxWidget(
                      title: 'City'.tr,
                      controller: _controller.cityController,
                      hintText: 'Enter your city.'.tr,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          _controller.selectDate(context);
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Obx(
                              () => Row(
                                children: [
                                  _controller.formattedDate.value.isNotEmpty
                                      ? Text(
                                          'Date of Birth: ',
                                          style: TextStyle(fontSize: 16.sp, color: Colors.black.withOpacity(0.5)),
                                        )
                                      : const SizedBox(),
                                  Text(
                                    _controller.formattedDate.value.isEmpty ? 'Click here to select a date' : _controller.formattedDate.value,
                                    style: TextStyle(fontSize: 16.sp, color: _controller.formattedDate.value.isEmpty ? Colors.black.withOpacity(0.5) : Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    button(buttonName: "Complete",),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
