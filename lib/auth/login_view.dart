import 'package:flutter/material.dart';
import 'package:thimar/core/constant.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(thimarLogo),
        ],
      ),
    );
  }
}
