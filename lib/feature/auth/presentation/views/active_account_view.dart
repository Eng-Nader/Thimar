import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thimar/core/router/thimar_router.dart';
import 'package:thimar/feature/auth/presentation/widget/active_and_otp_body.dart';

class ActiveAccountView extends StatelessWidget {
  const ActiveAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ActiveAndOtpBody(
        title: 'تفعيل الحساب',
        onPressed: () {
          context.go(ThimarRouter.login);
        },
      ),
    );
  }
}
