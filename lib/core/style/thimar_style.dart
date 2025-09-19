import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/color/thimar_color.dart';

class ThimarStyle {
  static TextStyle styleBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,

    color: ThimarColor.primaryColor,
  );
  static TextStyle styleRegular21 = TextStyle(
    fontSize: 21.sp,
    fontWeight: FontWeight.w400,

    color: ThimarColor.primaryColor,
  );
  static TextStyle styleLight16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: ThimarColor.secondColor,
  );
  static TextStyle styleRegular15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: ThimarColor.thirdColor,
  );
  static TextStyle styleBold15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: Color(0xffFFFFFF),
  );
}
