import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/generated/assets.dart';

Widget subjectListContainer({required String title}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      height: 60.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Card(
        color: HexColor("#E8F6F9"),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  Assets.subject,
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget QuizListContainer({required String title}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      height: 60.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Card(
        color: HexColor("#E8F6F9"),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp, color: Colors.black),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget subjectListContainer2({required String serialNo, required String answerOption}) {
  return Container(
    height: 60.h,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all()),
    child: Center(
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            serialNo,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp, color: Colors.black),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            answerOption,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp, color: Colors.black),
          ),
        ],
      ),
    ),
  );
}
