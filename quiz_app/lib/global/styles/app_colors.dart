import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static const Color primary = Color.fromARGB(255, 241, 241, 241);
  static const Color textfieldColor = Color.fromARGB(255, 156, 152, 138);
  static final Color header = HexColor('#0F172A');

  static final LinearGradient appgrad = LinearGradient(
    colors: [HexColor('#3B85BF'), HexColor('#002451')],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.clamp,
  );

  static final Color appColor = HexColor('#132040');
  static const Color white = Colors.white;
  static final Color containerBorder = HexColor('#5598AF');
  static final Color containerColor = HexColor('#121F3F');
  static final Color bottomNavBlueColor = HexColor('#16D8FF');
  static final Color liveContainerColor = HexColor('#132241');
  static final Color blue = HexColor('#36C2DD');
  static final Color league = HexColor('#17294F');
  static final Color selective = HexColor('#1DD6FF');
  static const Color black = Colors.black;
  static final Color secondteam = HexColor('#FFED00');
}
