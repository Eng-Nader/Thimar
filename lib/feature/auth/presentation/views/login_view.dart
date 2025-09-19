import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thimar/core/style/thimar_style.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_key_text_fild.dart';
import 'package:thimar/feature/auth/presentation/widget/custom_thimar_logo.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomThimarLogo(),
              SizedBox(
                height: 16.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'مرحبا بك مرة أخرى',
                  style: ThimarStyle.styleBold16,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'يمكنك تسجيل الدخول الأن',
                style: ThimarStyle.styleLight16,
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CustomKeyTextFild(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
