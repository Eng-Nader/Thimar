import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/color/thimar_color.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CustomCirecleCount extends StatelessWidget {
  const CustomCirecleCount({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      width: 70,
      height: 70,
      duration: 100,
      fillColor: ThimarColor.counterColor,
      ringColor: ThimarColor.primaryColor,
      isReverse: true,
      isReverseAnimation: true,
      textFormat: CountdownTextFormat.MM_SS,
      textStyle: ThimarStyle.styleRegular21,
    );
  }
}
