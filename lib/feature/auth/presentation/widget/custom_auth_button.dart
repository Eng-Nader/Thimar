import 'package:flutter/material.dart';
import 'package:thimar/core/color/thimar_color.dart';
import 'package:thimar/core/style/thimar_style.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: ThimarColor.primaryColor,
        fixedSize: Size.fromHeight(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: ThimarStyle.styleBold15,
      ),
    );
  }
}
