import 'package:flutter_screenutil/flutter_screenutil.dart';

bool isTablet() {
  double screenWidth = ScreenUtil().screenWidth;

  // If the screen width is greater than or equal to 600 logical pixels,
  // consider it as a tablet.
  return screenWidth >= 600;
}
