import 'package:flutter/material.dart';
import 'package:thimar/core/color/thimar_color.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CustomResendButton extends StatelessWidget {
  const CustomResendButton({super.key, required this.onPressed});
  final VoidCallback onPressed ; 

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(
          color: ThimarColor.primaryColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed:  onPressed , 
      child: Text(
        'إعادة الإرسال',
        style: ThimarStyle.styleBold16,
      ),
    );
  }
}
