import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quiz_app/view/screen/splash_screen.dart';

import 'global/app_constants.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(hiveBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          builder: FToastBuilder(),
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'BSC Quiz App',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
          ),
          home: SplashScreen(),
        );
      },
    );
  }
}
