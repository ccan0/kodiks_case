import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';

class TextStyleConstants {
  static final TextStyleConstants _instance = TextStyleConstants._internal();

  factory TextStyleConstants() {
    return _instance;
  }

  TextStyleConstants._internal();

  TextStyle get w400s20DarkBlue => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20.sp,
        color: ColorConstants().darkBlue,
      );

  TextStyle get w700s20LightColor => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    color: ColorConstants().lightColor,
  );

  TextStyle get w400s15DarkBlue => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
    color: ColorConstants().darkBlue,
  );

  TextStyle get w400s16DarkGrey => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: ColorConstants().darkGrey,
  );

  TextStyle get w400s16ShadowColor => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: ColorConstants().shadowColor,
  );

  TextStyle get w400s16ErrorColor => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: ColorConstants().errorColor,
  );

  TextStyle get w400s12DarkGrey => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: ColorConstants().darkGrey,
  );

  TextStyle get w500s24DarkBlue => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24.sp,
    color: ColorConstants().darkBlue,
  );

  TextStyle get w400s12BorderColor => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: ColorConstants().borderColor,
  );
}
