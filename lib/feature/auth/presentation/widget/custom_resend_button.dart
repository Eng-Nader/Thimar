import 'package:flutter/material.dart';
import 'package:thimar/core/color/thimar_color.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CustomResendButton extends StatelessWidget {
  const CustomResendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(
          color: ThimarColor.primaryColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Text(
        'إعادة الإرسال',
        style: ThimarStyle.styleBold16,
      ),
    );
  }
}
