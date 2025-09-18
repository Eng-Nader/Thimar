import 'package:flutter/cupertino.dart';
import 'package:thimar/core/color/thimar_color.dart';

class ThimarStyle {
  static const styleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: 'Tajawal',
    color: ThimarColor.primaryColor,
  );
  static const styleRegular21 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.w400,

    color: ThimarColor.primaryColor,
  );
  static const styleLight16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: ThimarColor.secondColor,
  );
  static const styleRegular15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: ThimarColor.thirdColor,
  );
  static const styleBold15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: Color(0xffFFFFFF),
  );
}
