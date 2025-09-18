import 'package:flutter/material.dart';
import 'package:thimar/core/constant.dart';
import 'package:thimar/core/style/thimar_style.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                thimarLogo,
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(
              height: 16,
            ),

            Text(
              'مرحبا بك مرة أخرى',
              style: ThimarStyle.styleBold16,
            ),
          ],
        ),
      ),
    );
  }
}
