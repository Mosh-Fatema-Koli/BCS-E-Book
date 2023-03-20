import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quiz_app/global/app_assets.dart';
import 'package:quiz_app/global/styles/app_colors.dart';


final CarouselController carouselController = CarouselController();
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
var width = Get.width;

Widget carouselSliderWidget() {
  return Stack(
    children: [
      CarouselSlider(
        items: imgList
            .map((item) => GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 226.0.h,
                    // margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(0)),
                      child: Stack(
                        children: <Widget>[
                          //        ClipRRect(
                          //   borderRadius: BorderRadius.circular(3),
                          //   child: Image.asset(
                          //     item,
                          //     height: double.infinity,
                          //     width: double.infinity,
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),

                          CachedNetworkImage(
                            imageUrl: item,
                            width: width,
                            height: double.infinity,
                            fit: BoxFit.fill,
                            placeholder: (context, url) => Container(
                              color: AppColors.bottomNavBlueColor,
                              width: width,
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 60.0.w,
                                height: 60.0.h,
                                child: Image.asset(AppAssets.splash),
                              ),
                            ),
                            errorWidget: (context, url, error) => ClipRRect(
                              child: Image.asset(
                                AppAssets.splash,
                                height: double.infinity,
                                width: width,
                              ),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),

                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
        carouselController: carouselController,
        options: CarouselOptions(
          height: 226.0.h,
          autoPlay: true,
          enlargeCenterPage: false,
          viewportFraction: 1,
          aspectRatio: 2.3,
          onPageChanged: (index, reason) {
            // settingController.promotionSliderIndex.value = index;
          },
        ),
      ),
      Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((entry) {
              return GestureDetector(
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white60),
                ),
              );
            }).toList(),
          )),
    ],
  );
}
