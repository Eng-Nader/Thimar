import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/constant.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CustomKeyTextFild extends StatelessWidget {
  const CustomKeyTextFild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 70.h,
      decoration: BoxDecoration(
        border: BoxBorder.all(
          color: Color(0xfff3f3f3),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: Column(
          children: [
            Image.asset(
              saudiFlag,
              height: 20.h,
              width: 32.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              '+966',
              style: ThimarStyle.styleBold16,
            ),
          ],
        ),
      ),
    );
  }
}
