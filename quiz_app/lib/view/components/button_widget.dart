import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

Widget button({required String buttonName,}) {
  return Container(
    width: 150,
    padding: const EdgeInsets.symmetric(vertical: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      // color: AppColors.bottomNavBlueColor.withOpacity(.3),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          HexColor("#323361"),
          HexColor("#2E2E54"),

        ],
      ),
    ),
    child: Text(
      buttonName,
      style: TextStyle(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
