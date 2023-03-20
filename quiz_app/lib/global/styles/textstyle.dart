// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class CustomtextStyle {
  static final TextStyle maintext2 = TextStyle(color: AppColors.black, fontSize: 12.sp);

  static globalText(text, fontSize, fontWeight, color) {
    return Text(
      text,
      maxLines: 1,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        letterSpacing: 0.2,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  globalText1(text, fontSize, fontWeight, color) {
    return Text(
      text,
      maxLines: 2,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        letterSpacing: 0.2,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  globalText2(text, fontSize, fontWeight, color) {
    return SizedBox(
      width: 30,
      child: Text(
        text,
        maxLines: 2,
        textAlign: TextAlign.end,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          letterSpacing: 0.2,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
