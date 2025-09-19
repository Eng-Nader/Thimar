import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CusotmAuthTextFild extends StatelessWidget {
  const CusotmAuthTextFild({
    super.key,
    required this.logo,
    required this.hintText,
  });
  final String logo;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      decoration: InputDecoration(
        prefixIcon: Image.asset(
          width: 20.w,
          height: 20.h,
          logo,
        ),
        hintText: hintText,
        hintStyle: ThimarStyle.styleLight16,

        border: getBorder(),
        focusedBorder: getBorder(),
        enabledBorder: getBorder(),
      ),
    );
  }

  OutlineInputBorder getBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: Color(0xfff3f3f3),
      ),
    );
  }
}
