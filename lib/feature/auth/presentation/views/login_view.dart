import 'package:flutter/material.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_thimar_logo.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomThimarLogo(),
          ],
        ),
      ),
    );
  }
}
