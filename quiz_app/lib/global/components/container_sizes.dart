import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/global/styles/textstyle.dart';

class ContainerClass {
  static signinOptionsContainerSizes(height, width, circularContainerheight, circularContainerWidth, signinOptionsImage, signinOptionsImageHeight, text) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: Colors.white54, borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          Container(
            height: circularContainerheight,
            width: circularContainerWidth,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Image(
                image: AssetImage(signinOptionsImage),
                height: signinOptionsImageHeight,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 26.w,
            height: 60.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomtextStyle.globalText(text, 14.0.sp, FontWeight.bold, Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  static containerSize(height, width, color, radiusCircular, widget) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(radiusCircular)),
      child: Center(child: widget),
    );
  }

  static containerSizeSuccessfullyClaimed(height, width, color, radiusCircular, text, fontSize, fontWeight, colorofText, textContainerWidth) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(radiusCircular)),
      child: Center(
        child: CustomtextStyle.globalText(text, fontSize, fontWeight, colorofText),
      ),
    );
  }

  static containerSizeImage(height, width, imageHeight, imageWidth, color, radiusCircular, text, image, icon) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(radiusCircular)),
      child: Center(
        child: text != null
            ? CustomtextStyle.globalText(text, 16.0, FontWeight.normal, Colors.white)
            : image != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(
                      image,
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.fill,
                    ),
                  )
                : Icon(icon),
      ),
    );
  }

  static containerSizeTopImageRadius(height, width, color, radiusCircular, text, image, icon) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(radiusCircular)),
      child: Center(
        child: text != null
            ? CustomtextStyle.globalText(text, 16.0, FontWeight.normal, Colors.white)
            : image != null
                ? ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
                    child: CachedNetworkImage(
                      imageUrl: image,
                      imageBuilder: (context, imageProvider) => Container(
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(8), topLeft: Radius.circular(8)),
                        ),
                      ),
                      placeholder: (context, url) => Transform.scale(
                        scale: .15,
                        child: const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(color: Colors.white),
                        ),
                      ),
                      errorWidget: (context, url, error) => Image.asset(
                        'assets/default-team.png',
                        height: height,
                        width: width,
                      ),
                    ),
                  )
                : Icon(icon),
      ),
    );
  }

  static containerSizeTopImageRadius1(height, width, color, radiusCircular, text, image, icon) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(radiusCircular)),
      child: Center(
        child: text != null
            ? CustomtextStyle.globalText(text, 16.0, FontWeight.normal, Colors.white)
            : image != null
                ? ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                    child: Image.asset(
                      image,
                      width: width,
                      height: height,
                      fit: BoxFit.cover,
                    ),
                  )
                : Icon(icon),
      ),
    );
  }

  static containerLogin(height, width, color, borderRadius, widget) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: widget,
    );
  }

  static containerList(height, width, color, borderRadius, widget, borderAll) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: borderAll,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.3),
            offset: const Offset(
              0.5,
              0.5,
            ),
            blurRadius: 1.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: widget,
    );
  }

  static containerCircle(height, width, color, borderRadius, widget) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: widget,
    );
  }

  static containerTextField(height, width, color, borderRadius, borderColor, widget, borderWidth) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: widget,
    );
  }

  static circleContainerImage({required double borderWidth, required double borderRadius, required String image, required HexColor borderColor}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: CircleAvatar(
        radius: 40.r,
        backgroundImage: CachedNetworkImageProvider(image),
      ),
    );
  }

  static registrationImage({required double borderWidth, required double borderRadius, required HexColor borderColor, String? image}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
      child: CircleAvatar(
        radius: 58,
        backgroundImage: backgroundImage(image),
        child: Stack(
          children: const [
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white70,
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static ImageProvider<Object>? backgroundImage(String? image) {
    if (image != null) {
      return FileImage(
        File(image),
      );
    } else {
      return const AssetImage("assets/person.png");
    }
  }
}
