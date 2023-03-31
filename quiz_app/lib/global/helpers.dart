import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../main.dart';

bool isTablet() {
  double screenWidth = ScreenUtil().screenWidth;
  return screenWidth >= 600;
}

successToast(String text) {
  if (Platform.isAndroid || Platform.isIOS) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
    );
  } else {
    FToast fToast = FToast();
    fToast.init(navigatorKey.currentContext!);
    fToast.showToast(
      child: toast(text: text, backgroundColor: Colors.green),
      gravity: ToastGravity.CENTER,
      toastDuration: const Duration(seconds: 2),
    );
  }
}

errorToast(String text) {
  if (Platform.isAndroid || Platform.isIOS) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
    );
  } else {
    FToast fToast = FToast();
    fToast.init(navigatorKey.currentContext!);
    fToast.showToast(
      child: toast(text: text, backgroundColor: Colors.red),
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }
}

infoToast(String text) {
  if (Platform.isAndroid || Platform.isIOS) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.indigo,
    );
  } else {
    FToast fToast = FToast();
    fToast.init(navigatorKey.currentContext!);
    fToast.showToast(
      child: toast(text: text, backgroundColor: Colors.indigo),
      gravity: ToastGravity.CENTER,
      toastDuration: const Duration(seconds: 2),
    );
  }
}

Widget toast({required String text, required Color backgroundColor}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
      color: backgroundColor,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
