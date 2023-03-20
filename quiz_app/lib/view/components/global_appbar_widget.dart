import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

appbarWidget({required String title, Widget? time}) {
  return AppBar(
    // backgroundColor: Color(0xf045de9).withOpacity(0.7),
    centerTitle: true,
    title: Text(title, style: TextStyle(fontSize: 20.0.sp, color: Colors.white)),
    elevation: 0,
    toolbarHeight: 50.h,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            HexColor("#323361"),
            HexColor("#2E2E54"),

          ],
        ),
      ),
    ),
    actions: [
      time ?? const SizedBox(),
    ],
  );
}
