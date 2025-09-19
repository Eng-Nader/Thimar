import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thimar/core/constant.dart';

class CustomKeyTextFild extends StatelessWidget {
  const CustomKeyTextFild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 70.h,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            saudiFlag,
          ),
        ],
      ),
    );
  }
}
