import 'package:flutter/material.dart';
import 'package:thimar/core/constant.dart';

class CustomThimarLogo extends StatelessWidget {
  const CustomThimarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        thimarLogo,
        height: 140,
        width: 140,
      ),
    );
  }
}
