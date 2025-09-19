import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/color/thimar_color.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() ?onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: ThimarColor.primaryColor,
        fixedSize: Size.fromHeight(60.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: ThimarStyle.styleBold15,
      ),
    );
  }
}
