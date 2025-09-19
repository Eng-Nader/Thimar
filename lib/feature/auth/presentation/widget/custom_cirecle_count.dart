import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/color/thimar_color.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CustomCirecleCount extends StatelessWidget {
  const CustomCirecleCount({super.key, required this.onComplete});
  final VoidCallback onComplete;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      onComplete: onComplete,
      width: 70.w,
      height: 70.h,
      duration: 5,
      fillColor: ThimarColor.counterColor,
      ringColor: ThimarColor.primaryColor,
      isReverse: true,
      isReverseAnimation: true,
      textFormat: CountdownTextFormat.MM_SS,
      textStyle: ThimarStyle.styleRegular21,
    );
  }
}
