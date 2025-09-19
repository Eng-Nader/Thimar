import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thimar/core/router/thimar_router.dart';
import 'package:thimar/feature/auth/presentation/widget/active_and_otp_body.dart';

class VerfiyOtpView extends StatelessWidget {
  const VerfiyOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ActiveAndOtpBody(
        title: 'نسيت كلمة المرور',
        onPressed: (){ 
          context.go(ThimarRouter.createPassword);
        },
      ),
    );
  }
}
